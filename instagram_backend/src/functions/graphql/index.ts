import { ApolloServer } from "@apollo/server";
import { User } from "./user";
async function createApolloGraphQLServer() {
  // Create GraphQl Server
  const gqlServer = new ApolloServer({
    typeDefs: `
    type Query{
        hello: String
        ${User.queries}
    }
    type Mutation {
      ${User.mutations}
    }
    `,
    resolvers: {
      Query: {
        hello: () => "hello graphql",
        ...User.resolvers.queries,
      },
      Mutation: {
        ...User.resolvers.mutations,
      },
    },
  });

  // Start the gql Server
  await gqlServer.start();
  return gqlServer;
}

export default createApolloGraphQLServer;
