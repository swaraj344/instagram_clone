import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:instagram_clone/data/graphql/graphql.dart';
import 'package:instagram_clone/features/add_post/add_post_services.dart/i_add_post_services.dart';

class AddPostService extends IAddPostServices {
  final GraphQLClient _qlClient;

  AddPostService(this._qlClient);
  @override
  createPost({
    required String caption,
    required Uint8List image,
  }) async {
    final url = await getSelfSignedUrl();
    if (url == null) return;
    final imageUrl = await _uploadImage(url, image);
    print("imageUrl: $imageUrl");
  }

  @override
  Future<String?> getSelfSignedUrl() async {
    return await _qlClient.query$GetPreSignedUrlForImageUpload().then((value) {
      print(value.parsedData?.getPreSignedUrlForImageUpload);
      print(value.exception);
      return value.parsedData?.getPreSignedUrlForImageUpload;
    });
  }

  _uploadImage(String url, Uint8List data) async {
    final res = await Dio().put(url,
        data: Stream.fromIterable(
          data.map((e) => [e]),
        ),
        options: Options(headers: {
          Headers.contentLengthHeader: data.lengthInBytes,
          Headers.contentTypeHeader: "image/jpeg"
        }));

    // print(res.requestOptions.uri.host);
    // print(res.requestOptions.uri.path);
    // print(res.requestOptions.uri.origin);
    return res.requestOptions.uri.origin + res.requestOptions.uri.path;
  }
}
