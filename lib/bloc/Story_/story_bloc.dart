import 'package:bloc/bloc.dart';
import 'package:instagram/Repositoy/Api/Story_Api/Story_Api.dart';
import 'package:instagram/Repositoy/Model%20class/story_model.dart';
import 'package:meta/meta.dart';

part 'story_event.dart';
part 'story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryApi api = StoryApi();
  late StoryModel Stories;
  StoryBloc() : super(StoryInitial()) {
    on<StoryEvent>((event, emit) async {
      try {
        Stories = await api.getStory();
        emit(StoryBlocLoaded(Stories: Stories));
      } catch (e) {
        print("0000000000000000000000${e}");
        emit(StoryBlocError());
      }
    });
  }
}
