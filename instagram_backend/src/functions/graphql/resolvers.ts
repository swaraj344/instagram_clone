import { User } from "./user";
import { Post } from "./post";

export const resolvers = {
  Query: {
    ...User.resolvers.queries,
    ...Post.resolvers.queries,
  },
  Mutation: {
    ...User.resolvers.mutations,
    ...Post.resolvers.mutations,
  },
  Post: { ...Post.resolvers.posts },
  Comment: { ...Post.resolvers.comments },
  User: { ...User.resolvers.users },
};

export default resolvers;
