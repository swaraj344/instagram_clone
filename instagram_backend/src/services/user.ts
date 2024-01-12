import { createHmac, randomBytes } from "crypto";
import { prismaClient } from "../lib/db";
import JWT from "jsonwebtoken";

export interface CreateUserPayload {
  userName: string;
  email: string;
  fullName: string;
  password: string;
  bio?: string;
  phoneNumber?: string;
}

export interface GetUserTokenPayload {
  email: string;
  password: string;
}
const JWT_SECRET = "SUPERSTRONGAPP";

class UserServices {
  private static async getUserByEmail(email: string) {
    return await prismaClient.user.findUnique({ where: { email } });
  }

  private static generateHash(salt: string, password: string) {
    const hashedPassword = createHmac("sha256", salt)
      .update(password)
      .digest("hex");
    return hashedPassword;
  }

  public static createUser(payload: CreateUserPayload) {
    const { email, fullName, password, userName, bio, phoneNumber } = payload;
    const salt = randomBytes(32).toString("hex");
    const hashedPassword = UserServices.generateHash(salt, password);
    return prismaClient.user.create({
      data: {
        email,
        fullName,
        password: hashedPassword,
        userName,
        bio,
        phoneNumber,
        salt,
      },
    });
  }

  public static async getUserToken(payload: GetUserTokenPayload) {
    const { email, password } = payload;
    const user = await UserServices.getUserByEmail(email);
    if (!user) {
      throw new Error("User Not Found");
    }
    const userSalt = user.salt;
    const userHashPassword = UserServices.generateHash(userSalt, password);
    if (userHashPassword !== user.password) {
      throw new Error("Incorrect Password");
    }

    // Gen Token
    const token = JWT.sign({ id: user.id, email: user.email }, JWT_SECRET);
    return token;
  }
}

export default UserServices;
