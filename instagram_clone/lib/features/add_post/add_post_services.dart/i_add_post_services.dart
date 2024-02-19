import 'package:flutter/foundation.dart';

abstract class IAddPostServices {
  createPost({
    required String caption,
    required Uint8List image,
  });
  getSelfSignedUrl();
}
