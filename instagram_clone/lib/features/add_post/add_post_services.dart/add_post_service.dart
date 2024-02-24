import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:instagram_clone/core/failures/failures.dart';
import 'package:instagram_clone/data/graphql/graphql.dart';
import 'package:instagram_clone/features/add_post/add_post_services.dart/i_add_post_services.dart';

class AddPostService extends IAddPostServices {
  final GraphQLClient _qlClient;

  AddPostService(this._qlClient);
  @override
  Future<Either<InfraFailure, Unit>> createPost({
    required String caption,
    required Uint8List image,
  }) async {
    try {
      final url = await getSelfSignedUrl();
      if (url == null) {
        return left(const InfraFailure.serverError(
            errorMessage: "Unable To Create Self Signed Url"));
      }
      final imageUrl = await _uploadImage(url, image);

      print("imageUrl: $imageUrl");
      final postId = await _qlClient
          .mutate$CreatePost(Options$Mutation$CreatePost(
              variables: Variables$Mutation$CreatePost(
                  data: Input$CreatePostData(
            caption: caption,
            imageUrls: [imageUrl],
          ))))
          .then((value) => value.parsedData?.createPost?.id);
      print(postId);
      return right(unit);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(const InfraFailure.serverError());
    }
  }

  @override
  Future<String?> getSelfSignedUrl() async {
    return await _qlClient.query$GetPreSignedUrlForImageUpload().then((value) {
      print(value.parsedData?.getPreSignedUrlForImageUpload);
      print(value.exception);
      return value.parsedData?.getPreSignedUrlForImageUpload;
    });
  }

  Future<String> _uploadImage(String url, Uint8List data) async {
    final res = await Dio().put(url,
        data: Stream.fromIterable(
          data.map((e) => [e]),
        ),
        options: Options(headers: {
          Headers.contentLengthHeader: data.lengthInBytes,
          Headers.contentTypeHeader: "image/jpeg"
        }));

    return res.requestOptions.uri.path;
  }
}
