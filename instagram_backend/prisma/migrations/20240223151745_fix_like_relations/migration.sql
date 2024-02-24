/*
  Warnings:

  - You are about to drop the column `parent_id` on the `Like` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[liked_by,parentId,likeType]` on the table `Like` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `likeType` to the `Like` table without a default value. This is not possible if the table is not empty.
  - Added the required column `parentId` to the `Like` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "LikeType" AS ENUM ('POST', 'COMMENT');

-- DropForeignKey
ALTER TABLE "Like" DROP CONSTRAINT "comment_like";

-- DropForeignKey
ALTER TABLE "Like" DROP CONSTRAINT "post_like";

-- DropIndex
DROP INDEX "Like_liked_by_parent_id_key";

-- AlterTable
ALTER TABLE "Like" DROP COLUMN "parent_id",
ADD COLUMN     "likeType" "LikeType" NOT NULL,
ADD COLUMN     "parentId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Like_liked_by_parentId_likeType_key" ON "Like"("liked_by", "parentId", "likeType");
