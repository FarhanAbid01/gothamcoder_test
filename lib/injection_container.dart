import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:gotham_test/presentation/postBloc/post_bloc.dart';
import 'package:http/http.dart' as http;

import 'data/data_source/post_remote_data_source.dart';
import 'data/reposiotry/get_repo_implementation.dart';
import 'domain/repository/post_reposiotry.dart';
import 'domain/usercases/post_usecase.dart';

final locator = GetIt.instance;



Future<void> setupLocation() async {
  await Firebase.initializeApp(
  );
  locator.registerFactory<PostRemoteDataSource>(() => PostRemoteDataSourceImpl(client: locator()));
  locator.registerFactory<PostReposiotry>(() => PostRepostioryImp(postRemoteDataSource: locator()));
  locator.registerFactory<PostUseCase>(() => PostUseCase(postReposiotry: locator()));
  locator.registerFactory<http.Client>(() => http.Client());
   locator.registerFactory<PostBloc>(() => PostBloc(locator()));
}