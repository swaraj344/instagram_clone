import { nanoid } from "nanoid";
import { createHmac } from "crypto";
import BadRequestError from "../../../errors/BadRequestError";
import UserServices from "../../../services/user";
import { ServerContext } from "../interfaces";
import { CreateUserData } from "./interfaces";

const queries = {
  getSessionUser: async (_: any, agrs: any, ctx: ServerContext) => {
    if (!ctx.user) return null;
    const user = UserServices.getUserById(ctx.user.id);
    return user;
  },
  singinwithEmailPassword: async (
    _: any,
    { email, password }: { email: string; password: string },
    ctx: ServerContext
  ) => {
    return UserServices.signinWithEmailAndPassword(email, password);
  },
  verifyGoogleAuthToken: async (
    _: any,
    { googleToken }: { googleToken: string },
    ctx: ServerContext
  ) => {
    // const tokenResult = await GoogleAPIService.verifyUserToken(googleToken);
    // if (!tokenResult) throw new AccessDeniedError("Invalid Token");
    // const { email, email_verified, given_name, family_name, picture } =
    //   tokenResult;
    // const checkUserExist = await UserService.getUserByEmail(email);
    // if (!checkUserExist)
    //   await UserService.createUser({
    //     data: {
    //       firstName: given_name,
    //       lastName: family_name,
    //       email,
    //       profileImageURL: picture,
    //       emailVerified: email_verified === "true",
    //       authenticationType: "GOOGLE",
    //     },
    //   });
    // const token = await UserService.generateTokenForUser(email);
    // return token;
  },
  getPreSignedUrlForImageUpload: async (
    _: any,
    agrs: any,
    ctx: ServerContext
  ) => {
    if (!ctx.user) return null;
    const url = UserServices.getImageUploadSignedUrl(ctx.user.id);
    return url;
  },
};
const mutations = {
  createUser: async (
    _: any,
    { data }: { data: CreateUserData },
    ctx: ServerContext
  ) => {
    const { fullName, email, password, userName } = data;

    const checkExistsingUser = await UserServices.getUserByEmail(email);
    if (checkExistsingUser)
      throw new BadRequestError(
        `User with email ${data.email} already exists!`
      );

    const salt = nanoid(12);
    const hashedPassword = createHmac("sha256", salt)
      .update(password)
      .digest("hex");

    const user = await UserServices.createUser({
      data: {
        fullName,
        email,
        password: hashedPassword,
        salt,
        authenticationType: "EMAIL_PASSWORD",
        userName,
      },
    });

    return user;
  },
};

export const resolvers = { queries, mutations };
