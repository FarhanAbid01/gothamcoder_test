import 'package:gotham_test/domain/entities/post_model.dart';

class Post extends PostModel{
  Post({super.id, super.title, super.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}