import { createHmac, randomBytes } from "crypto";
import { prismaClient } from "../lib/db";
import JWT from "jsonwebtoken";
import { UserRole } from "@prisma/client";
import BadRequestError from "../errors/BadRequestError";
import { S3Client, PutObjectCommand } from "@aws-sdk/client-s3";
import { getSignedUrl } from "@aws-sdk/s3-request-presigner";

export interface UserJWTPayload {
  id: string;
  email: string;
  role: UserRole;
}

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

const JWT_SECRET = process.env.JWT_SECRET;

class UserServices {
  public static createUser = prismaClient.user.create;
  public static getUserById(id: string) {
    return prismaClient.user.findUnique({ where: { id } });
  }
  public static async getUserByEmail(email: string) {
    return await prismaClient.user.findUnique({ where: { email } });
  }

  public static async signinWithEmailAndPassword(
    email: string,
    password: string
  ) {
    const user = await this.getUserByEmail(email);
    if (!user)
      throw new BadRequestError(`User with email ${email} does not exists!`);

    if (user.authenticationType !== "EMAIL_PASSWORD")
      throw new BadRequestError(`Invalid Authentication Method`);

    const userSalt = user.salt;

    if (!userSalt)
      throw new BadRequestError(
        `Something went wrong with salt! Please contact site admin`
      );

    const hashPassword = createHmac("sha256", userSalt)
      .update(password)
      .digest("hex");

    if (user.password !== hashPassword)
      throw new BadRequestError(`Invalid email or password!`);

    return this.generateTokenForUser(user.email);
  }

  public static async generateTokenForUser(email: string) {
    const user = await this.getUserByEmail(email);
    if (!user) throw new BadRequestError(`user with ${email} does not exists`);

    const payload: UserJWTPayload = {
      id: user.id,
      email: user.email,
      role: user.role,
    };

    const token = JWT.sign(payload, JWT_SECRET as string);
    return token;
  }

  public static verifyToken(token: string) {
    try {
      return JWT.verify(token, JWT_SECRET as string) as UserJWTPayload;
    } catch (error) {
      return null;
    }
  }

  public static async getImageUploadSignedUrl(userId: string) {
    const command = new PutObjectCommand({
      Bucket: "instagram-clone-swaraj344",
      Key: `${userId}/uploads/images/image-${Date.now()}.jpeg`,
      ContentType: "image/jpeg",
    });
    const url = await getSignedUrl(this.getAwsClient(), command);
    return url;
  }

  private static getAwsClient(): S3Client {
    const s3Client = new S3Client({
      region: "ap-south-1",
      credentials: {
        accessKeyId: "AKIAY3NJKJ6REMTVKI6E",
        secretAccessKey: "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",
      },
    });

    return s3Client;
  }
}

export default UserServices;
