import UserServices, {
  CreateUserPayload,
  GetUserTokenPayload,
} from "../../services/user";

const queries = {
  getUserToken: async (_: any, payload: GetUserTokenPayload) => {
    const res = await UserServices.getUserToken(payload);
    return res;
  },
};
const mutations = {
  createUser: async (_: any, payload: CreateUserPayload) => {
    const res = await UserServices.createUser(payload);
    return res.id;
  },
};

export const resolvers = { queries, mutations };
