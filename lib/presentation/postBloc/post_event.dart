part of 'post_bloc.dart';

sealed class PostEvent extends Equatable {
  const PostEvent();
}


class GetAllPostEvent extends PostEvent {
  @override
  List<Object> get props => [];
}


