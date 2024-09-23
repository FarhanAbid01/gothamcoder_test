import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gotham_test/domain/entities/post_model.dart';
import '../../core/error/failure.dart';
import '../../domain/usercases/post_usecase.dart';
part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostUseCase _postUseCase;
  PostBloc(this._postUseCase) : super(PostInitial()) {
    on<PostEvent>((event, emit) async {
      if (event is GetAllPostEvent) {
        emit(PostLoading());
        await _postUseCase.getAllPost().then((value) {
          print('this is the value $value');
          value.fold(
            (failure) => emit(PostError(failure)),
            (posts) => emit(PostLoaded(posts)),
          );
        });
      }
    });
  }
}
