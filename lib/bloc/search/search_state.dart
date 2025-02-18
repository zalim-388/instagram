part of 'search_bloc.dart';

@immutable
sealed class SearchState {}

class SearchInitial extends SearchState {}

class SearchBlocLoading extends SearchState {}

class SearchBlocLoaded extends SearchState {
  final Searchmodel searchinsta;

  SearchBlocLoaded({
    required this.searchinsta,
  });
}

class searchBlocError extends SearchState {}
