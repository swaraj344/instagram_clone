import { ApolloServer } from "@apollo/server";
import { expressMiddleware } from "@apollo/server/express4";
import express from "express";

async function init() {
  const app = express();
  const PORT = Number(process.env.PORT) || 8000;

  app.use(express.json());

  // Create GraphQl Server
  const gqlServer = new ApolloServer({
    typeDefs: `
    type Query{
        hello: String
    }
    `,
    resolvers: {
      Query: {
        hello: () => "hello graphql",
      },
    },
  });

  // Start the gql Server
  await gqlServer.start();
  app.use("/graphql", expressMiddleware(gqlServer));

  app.get("/", (_, res) => {
    res.json({
      message: "Server is up and running",
    });
  });

  app.listen(PORT, () => console.log(`Server started at PORT:${PORT}`));
}

init();
