import { expressMiddleware } from "@apollo/server/express4";
import express from "express";
import createApolloGraphQLServer from "./graphql";

async function init() {
  const app = express();
  const PORT = Number(process.env.PORT) || 8000;

  app.use(express.json());

  app.use("/graphql", expressMiddleware(await createApolloGraphQLServer()));

  app.get("/", (_, res) => {
    res.json({
      message: "Server is up and running",
    });
  });

  app.listen(PORT, () => console.log(`Server started at PORT:${PORT}`));
}

init();
