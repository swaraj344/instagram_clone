import { ApolloServer } from "@apollo/server";
import { User } from "./user";
import { Post } from "./post";
async function createApolloGraphQLServer() {
  // Create GraphQl Server
  const gqlServer = new ApolloServer({
    typeDefs: `
    type Query{
        hello: String
        ${User.queries}
        ${Post.queries}
    }
    type Mutation {
      ${User.mutations}
      ${Post.mutations}
    }
    `,
    resolvers: {
      Query: {
        hello: () => "hello graphql",
        ...User.resolvers.queries,
        ...Post.resolvers.queries,
      },
      Mutation: {
        ...User.resolvers.mutations,
        ...Post.resolvers.mutations,
      },
    },
  });

  // Start the gql Server
  await gqlServer.start();
  return gqlServer;
}

export default createApolloGraphQLServer;
