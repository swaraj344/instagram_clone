/*
  Warnings:

  - A unique constraint covering the columns `[liked_by,parent_id]` on the table `Like` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Like_liked_by_parent_id_key" ON "Like"("liked_by", "parent_id");
