import 'package:bloc/bloc.dart';
import 'package:instagram/Repositoy/Api/post_Api/post_Api_.dart';
import 'package:instagram/Repositoy/Model%20class/post%20model.dart';
import 'package:meta/meta.dart';

part 'post_bloc_event.dart';
part 'post_bloc_state.dart';

class PostBlocBloc extends Bloc<PostBlocEvent, PostBlocState> {
  postApi api = postApi();
  
  late postmodel posts;
  PostBlocBloc() : super(PostBlocInitial()) {
    on<PostBlocEvent>((event, emit)async {
   try {
        posts = await api.getpost();
        emit(postBlocLoaded(posts: posts));
      } catch (e) {
        print("123${e}");
        emit(postBlocError());
      }

    });
  }
}
