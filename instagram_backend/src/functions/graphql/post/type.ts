export const types = `#graphql

    input CreatePostData {
        caption: String
        imageUrls: [String]
        location: String
    }

    type Location {
        id: ID!
        latitude: Float
        longitude: Float
        name: String
    }

    type Post {
    id: ID!
    caption: String
    createdAt: Date!
    updatedAt: Date!
    user: User!
    media: [PostMedia!]!
    comments: [Comment!]!
    likes: [Like!]!
    PostActivity: PostActivity!
    }

    type FeedPost{
    id: ID!
    caption: String
    updatedAt: Date!
    user: User!
    likeCount: Int!
    commentCount: Int!
    mediaUrl: [String!]!
    }

    enum PostMediaType {
    IMAGE
    VIDEO
    }

    type PostMedia {
    id: ID!
    postType: PostMediaType!
    url: String!
    createdAt: Date!
    location: Location
    }

    type Comment {
    id: ID!
    text: String
    createdAt: Date!
    updatedAt: Date
    commentedBy: User!
    
    }

    type Like {
    id: ID!
    createdAt: Date!
    updatedAt: Date
    likedBy: User!
    parentId: String
    }

    type PostActivity {
    id: String!
    createdAt: Date!
    updatedAt: Date
    likeCount: Int!
    commentCount: Int!
    }
    
    type DeletePostPayload {
    id: ID!
    message: String
    }

    type LikePostPayload{
        id: ID!
        message: String
    }

    type StatusResponse{
        success: Boolean!
        message: String
    }
`;
