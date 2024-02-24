export const mutations = `#graphql
    createPost(data: CreatePostData!): Post
    deletePost(postId: ID!): DeletePostPayload
    likePost(postId: ID!): LikePostPayload
    unLikePost(postId: ID!): LikePostPayload
    createComment(postId: ID!, text: String!): Comment
    deleteComment(commentId: ID!):StatusResponse
`;
