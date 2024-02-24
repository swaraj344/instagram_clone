import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../core/failures/failures.dart';

abstract class IAddPostServices {
  Future<Either<InfraFailure, Unit>> createPost({
    required String caption,
    required Uint8List image,
  });
  getSelfSignedUrl();
}
