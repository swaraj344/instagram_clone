import { ServerContext } from "../interfaces";
import { CreatePostData } from "./interfaces";
import PostServices from "../../../services/post";
import UserServices from "../../../services/user";
import { Comment, Post } from "@prisma/client";

const queries = {
  getPreSignedUrlForImageUpload: async (
    _: any,
    agrs: any,
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    const url = PostServices.getImageUploadSignedUrl(ctx.user.id);
    return url;
  },

  getFeeds: async (_: any, agrs: any, ctx: ServerContext) => {
    if (!ctx.user) return null;

    const posts = await PostServices.generateFeedForUser(ctx.user.id, 50);

    return posts;
  },
};
const mutations = {
  createPost: async (
    _: any,
    { data }: { data: CreatePostData },
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    return await PostServices.createPost({
      caption: data.caption,
      imageUrls: data.imageUrls,
      location: data.location,
      userId: ctx.user.id,
    });
  },
  deletePost: async (
    _: any,
    { postId }: { postId: string },
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    return await PostServices.deletePost(ctx.user.id, postId);
  },
  likePost: async (
    _: any,
    { postId }: { postId: string },
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    return await PostServices.likePost(ctx.user.id, postId);
  },
  unLikePost: async (
    _: any,
    { postId }: { postId: string },
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    return await PostServices.removeLikeFromPost(ctx.user.id, postId);
  },
  createComment: async (
    _: any,
    { postId, text }: { postId: string; text: string },
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    return await PostServices.addCommentToPost(ctx.user.id, postId, text);
  },

  deleteComment: async (
    _: any,
    { commentId }: { commentId: string },
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    return await PostServices.deleteCommentById(commentId, ctx.user.id);
  },
};

// Post type resolver for the user field
const posts = {
  user: async (post: Post) => {
    // Use UserServices to fetch the user by ID
    return await UserServices.getUserById(post.userId);
  },
  media: async (post: Post) => {
    // Fetch media associated with the post from the database
    return PostServices.getMediasByPostId(post.id);
  },
  comments: async (post: Post) => {
    // Fetch comments associated with the post from the database
    return PostServices.getCommentsByPostId(post.id);
  },
  likes: async (post: Post) => {
    // Fetch likes associated with the post from the database
    return PostServices.getLikesByPostId(post.id);
  },
  PostActivity: async (post: Post) => {
    // Fetch PostActivity associated with the post from the database
    return PostServices.getPostActivityByPostId(post.id);
  },
};

const comments = {
  commentedBy: async (comment: Comment) => {
    return await UserServices.getUserById(comment.commentedById);
  },
};

export const resolvers = { queries, mutations, posts, comments };
