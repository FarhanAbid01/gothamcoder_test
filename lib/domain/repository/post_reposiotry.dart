import 'package:fpdart/fpdart.dart';
import 'package:gotham_test/domain/entities/post_model.dart';

import '../../core/error/failure.dart';

abstract class PostReposiotry {
  Future<Either<Failure, List<PostModel>>> getAllPost();
}