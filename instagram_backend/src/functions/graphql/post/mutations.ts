export const mutations = `#graphql
    createPost(data: CreatePostData!): Post
    deletePost(postId: ID!): DeletePostPayload
    likePost(postId: ID!): FeedPost
    unLikePost(postId: ID!): FeedPost
    createComment(postId: ID!, text: String!): Comment
    deleteComment(commentId: ID!):StatusResponse
`;
