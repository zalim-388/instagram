import 'package:bloc/bloc.dart';
import 'package:instagram/Repositoy/Api/search/search_Api.dart';
import 'package:instagram/Repositoy/Model%20class/search_Model.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchApi api = SearchApi();

  late Searchmodel searchinsta;

  SearchBloc() : super(SearchInitial()) {
    on<FecthSearch>((event, emit) async {
      emit(searchBlocError());

      try {
        searchinsta = await api.getsearch();

        emit(SearchBlocLoaded(searchinsta: searchinsta));
      } catch (e) {
        print(e);
        emit(searchBlocError());
      }
    });
  }
}
