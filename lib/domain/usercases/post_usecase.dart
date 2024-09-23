//make usecase for post
import 'package:fpdart/fpdart.dart';
import 'package:gotham_test/core/error/failure.dart';
import 'package:gotham_test/domain/entities/post_model.dart';
import 'package:gotham_test/domain/repository/post_reposiotry.dart';

class PostUseCase {
  final PostReposiotry postReposiotry;

  PostUseCase({required this.postReposiotry});

  Future<Either<Failure, List<PostModel>>> getAllPost() async {
    return postReposiotry.getAllPost();
  }
}