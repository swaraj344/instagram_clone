export const types = `#graphql


    input CreateUserData {
        userName: String!
        fullName: String
        email: String!
        password: String!
    }

    type User {
        id: ID!
        fullName: String!
        userName: String!
        email: String!
        emailVerified: Boolean!
        phoneNumber:String
        authenticationType: String
        profileImageURL: String
        role: String
        bio: String
        createdAt: Date
        updatedAt: Date
    }

`;
