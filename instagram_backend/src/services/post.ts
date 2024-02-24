import { PutObjectCommand, S3Client } from "@aws-sdk/client-s3";
import { getSignedUrl } from "@aws-sdk/s3-request-presigner";
import { prismaClient } from "../lib/db";
import { Post, PostMediaType } from "@prisma/client";
import { DeletePostPayload } from "../functions/graphql/post/interfaces";

class PostServices {
  public static async getImageUploadSignedUrl(userId: string) {
    const command = new PutObjectCommand({
      Bucket: "instagram-clone-swaraj344",
      Key: `${userId}/uploads/images/image-${Date.now()}.jpeg`,
      ContentType: "image/jpeg",
    });
    const url = await getSignedUrl(this.getAwsClient(), command);
    return url;
  }

  private static getAwsClient(): S3Client {
    const s3Client = new S3Client({
      region: process.env.S3_AWS_REGION as string,
      credentials: {
        accessKeyId: process.env.S3_AWS_ACCESS_KEY_ID as string,
        secretAccessKey: process.env.S3_AWS_SECRET_ACCESS_KEY as string,
      },
    });

    return s3Client;
  }

  public static async createPost({
    caption,
    imageUrls,
    location,
    userId,
  }: {
    caption?: string;
    imageUrls?: string[];
    location?: string;
    userId: string;
  }): Promise<Post> {
    const cloudFrontDomain = process.env.CLOUD_FRONT_DOMAIN as string;
    console.log(cloudFrontDomain);

    const post = await prismaClient.post.create({
      data: {
        caption,
        userId: userId,
        media: {
          createMany: {
            data:
              imageUrls?.map((url) => ({
                url: `${cloudFrontDomain}${url}`,
                postType: PostMediaType.IMAGE,
                locationId: location,
              })) || [],
          },
        },
        PostActivity: {
          create: {},
        },
      },
    });
    console.log(post);
    return post;
  }

  // delete post
  public static async deletePost(
    userId: string,
    postId: string
  ): Promise<DeletePostPayload> {
    // Optional: Check if the user is authorized to delete the post
    const post = await prismaClient.post.findUnique({
      where: { id: postId },
    });
    if (!post || post.userId !== userId) {
      throw new Error(
        "Post not found or user not authorized to delete this post"
      );
    }
    // Wrap deletion operations in a transaction
    await prismaClient.$transaction(async (prisma) => {
      // Use the provided transactional Prisma client for operations
      await prisma.comment.deleteMany({ where: { postId } });
      await prisma.like.deleteMany({ where: { parentId: postId } });
      await prisma.postMedia.deleteMany({ where: { postId } });
      await prisma.postActivity.delete({ where: { postId } });
      await prisma.post.delete({ where: { id: postId } });
    });

    return { id: postId, message: "Post successfully deleted" };
  }

  public static getMediasByPostId(postId: string) {
    return prismaClient.postMedia
      .findMany({
        where: {
          postId: postId,
        },
      })
      .then((e) => {
        console.log(e);
        return e;
      });
  }

  public static getCommentsByPostId(postId: string) {
    return prismaClient.comment.findMany({
      where: {
        postId,
      },
    });
  }
  public static getLikesByPostId(postId: string) {
    return prismaClient.like.findMany({
      where: {
        parentId: postId,
      },
    });
  }
  // get post activity
  public static getPostActivityByPostId(postId: string) {
    return prismaClient.postActivity.findUnique({
      where: {
        postId,
      },
    });
  }

  // like Post
  public static async likePost(userId: string, postId: string) {
    const result = await prismaClient.$transaction(async (prisma) => {
      // Create the like
      const like = await prisma.like.create({
        data: {
          likedById: userId,
          parentId: postId,
          likeType: "POST",
        },
      });

      // Increment the like count in PostActivity
      await prisma.postActivity.update({
        where: { postId: postId },
        data: { likeCount: { increment: 1 } },
      });

      return like;
    });

    console.log(result);

    return result;
  }

  // remove like from post
  public static async removeLikeFromPost(userId: string, postId: string) {
    const result = await prismaClient.$transaction(async (prisma) => {
      // Delete the like
      const del = await prisma.like.deleteMany({
        where: {
          likedById: userId,
          parentId: postId,
        },
      });

      if (del.count === 0) {
        throw new Error("Like not found");
      }

      // Decrement the like count in PostActivity
      await prisma.postActivity.update({
        where: { postId: postId },
        data: { likeCount: { decrement: 1 } },
      });
    });

    return result;
  }

  // add comment to post
  public static async addCommentToPost(
    userId: string,
    postId: string,
    text: string
  ) {
    const result = await prismaClient.$transaction(async (prisma) => {
      // Create the comment
      const comment = await prisma.comment.create({
        data: {
          postId,
          commentedById: userId,
          text,
        },
      });

      // Increment the comment count in PostActivity
      await prisma.postActivity.update({
        where: { postId: postId },
        data: { commentCount: { increment: 1 } },
      });

      console.log(comment);

      // Return the created comment
      return comment;
    });

    return result;
  }

  // delete comment by id
  public static async deleteCommentById(
    commentId: string,
    requestingUserId: string
  ) {
    const result = await prismaClient.$transaction(async (prisma) => {
      // Retrieve the comment along with the post's ownerId to check permissions
      const commentWithPost = await prisma.comment.findUnique({
        where: { id: commentId },
        include: {
          post: true, // Include the post to access the post's ownerId
        },
      });

      if (!commentWithPost) throw new Error("Comment not found.");

      // Check if the requesting user is either the commenter or the post's owner
      if (
        commentWithPost.commentedById !== requestingUserId &&
        commentWithPost.post.userId !== requestingUserId
      ) {
        throw new Error("You do not have permission to delete this comment.");
      }

      // Proceed to delete the comment if permission checks pass
      await prisma.comment.delete({
        where: { id: commentId },
      });

      // Optionally decrement the comment count in PostActivity
      // This step assumes you have a mechanism to keep track of comment counts
      await prisma.postActivity.update({
        where: { postId: commentWithPost.postId },
        data: { commentCount: { decrement: 1 } },
      });

      return { success: true, message: "Comment deleted successfully." };
    });

    return result;
  }

  public static async getUserPosts(userId: string): Promise<Post[]> {
    return await prismaClient.post.findMany({
      where: {
        userId,
      },
    });
  }

  public static async generateFeedForUser(userId: string, limit: number) {
    // Fetch IDs of users the current user follows
    const followedUsersIds = await prismaClient.user
      .findMany({
        where: {
          followedBy: {
            some: {
              id: userId,
            },
          },
        },
        select: {
          id: true,
        },
      })
      .then((e) => {
        return e.map((u) => u.id);
      });

    // Calculate limits for followed and discovery posts
    const followedPostsLimit = Math.floor(limit * 0.8); // e.g., 80% of the feed from followed users
    const discoveryPostsLimit = limit - followedPostsLimit; // Remaining posts for discovery

    // Fetch recent posts from followed users
    const followedPosts = await prismaClient.post.findMany({
      where: {
        userId: { in: followedUsersIds },
      },
      orderBy: { createdAt: "desc" },
      take: followedPostsLimit,
      include: { PostActivity: true, user: true, media: true },
      // Include related data as needed
    });

    // Fetch discovery posts from non-followed users, based on criteria like popularity or relevance
    const discoveryPosts = await prismaClient.post.findMany({
      where: {
        AND: [
          { userId: { notIn: followedUsersIds } }, // Exclude posts from followed users
          // Additional criteria for discovery posts (e.g., high engagement) can be added here
        ],
      },
      orderBy: [
        { createdAt: "desc" }, // Mix criteria as needed, such as prioritizing recent or popular posts
      ],
      take: discoveryPostsLimit,
      include: { PostActivity: true, user: true, media: true }, // Include related data as needed
    });

    // Combine followed posts and discovery posts
    const feedPosts = [...followedPosts, ...discoveryPosts].map((e) => {
      return {
        id: e.id,
        caption: e.caption,
        createdAt: e.createdAt,
        updatedAt: e.updatedAt,
        user: {
          id: e.userId,
          fullName: e.user.fullName,
          userName: e.user.userName,
          profileImageURL: e.user.profileImageUrl,
        },
        likeCount: e.PostActivity?.likeCount || 0,
        commentCount: e.PostActivity?.commentCount || 0,
        mediaUrl: e.media.map((e) => e.url),
      };
    });

    // Optionally shuffle the combined posts to integrate discovery content throughout the feed
    // feedPosts.sort(() => 0.5 - Math.random());

    return feedPosts;
  }
}

export default PostServices;
