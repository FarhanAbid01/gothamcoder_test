import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:gotham_test/core/error/exception.dart';
import 'package:gotham_test/core/error/failure.dart';
import 'package:gotham_test/domain/entities/post_model.dart';
import 'package:gotham_test/domain/repository/post_reposiotry.dart';

import '../data_source/post_remote_data_source.dart';

class PostRepostioryImp extends PostReposiotry {
  final PostRemoteDataSource postRemoteDataSource;

  PostRepostioryImp({
    required this.postRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<PostModel>>> getAllPost() async {
    try{
      final result  = await postRemoteDataSource.getAllPost();
      final List<PostModel> posts = result.map((e)=> PostModel.fromJson(e.toJson())).toList();
      return Right(posts);


    } on ServerException{
      return const Left(ServerFailure('an error has occured'));
    } on SocketException{
      return const Left(ConnectionFailure('failed to connect to network'));
    }
  }


}