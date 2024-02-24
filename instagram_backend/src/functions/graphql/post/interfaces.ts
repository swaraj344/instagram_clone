export interface CreatePostData {
  caption: string;
  imageUrls: string[];
  location: string;
}

export interface DeletePostPayload {
  id: string;
  message: string;
}
