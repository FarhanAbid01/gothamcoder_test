part of 'post_bloc.dart';

sealed class PostState extends Equatable {
  const PostState();
}

final class PostInitial extends PostState {
  @override
  List<Object> get props => [];
}

final class PostLoading extends PostState {
  @override
  List<Object> get props => [];
}

final class PostLoaded extends PostState {
  final List<PostModel> posts;
  const PostLoaded(this.posts);
  @override
  List<Object> get props => [posts];
}

final class PostError extends PostState {
  final Failure failure;
  const PostError(this.failure);
  @override
  List<Object> get props => [failure];
}


