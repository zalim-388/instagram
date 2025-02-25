import 'package:bloc/bloc.dart';
import 'package:instagram/Repositoy/Api/searchReel/searchreel_Api.dart';
import 'package:instagram/Repositoy/Model%20class/SearchreelsModel.dart';
import 'package:meta/meta.dart';

part 'search_reel_event.dart';
part 'search_reel_state.dart';

class SearchReelBloc extends Bloc<SearchReelEvent, SearchReelState> {
  SearchreelApi api = SearchreelApi();

  late ReelModel searchreel;
  SearchReelBloc() : super(SearchReelInitial()) {
    on<SearchReelEvent>((event, emit) async {
      try {
        searchreel = await api.getsearchreel();
        emit(SearchReelBlocLoaded(searchreel: searchreel));
      } catch (e) {
        print("0000000000000000000000${e}");
        emit(SearchReelBlocError());
      }
    });
  }
}
