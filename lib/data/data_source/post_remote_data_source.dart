import 'dart:convert';

import 'package:gotham_test/core/error/exception.dart';
import 'package:gotham_test/core/error/failure.dart';
import 'package:gotham_test/data/model/postClass/post.dart';
import 'package:http/http.dart' as http;

abstract class PostRemoteDataSource {
  Future<List<Post>> getAllPost();
}



class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  final http.Client client;
  PostRemoteDataSourceImpl({required this.client});
  @override
  Future<List<Post>> getAllPost() async {
    final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<Post> posts =  jsonDecode(response.body).map<Post>((post) => Post.fromJson(post)).toList();
      return posts;
    } else {
      throw ServerException();
    }
  }

}