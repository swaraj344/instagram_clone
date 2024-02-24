import { Post } from "./post";
import { User } from "./user";

const typeDefs = `#graphql
    scalar Date

    ${User.types}
    ${Post.types}

    type Query {
        ${User.queries}
        ${Post.queries}
    }
    
    type Mutation {
        ${User.mutations}
        ${Post.mutations}
    }
    
`;

export default typeDefs;
