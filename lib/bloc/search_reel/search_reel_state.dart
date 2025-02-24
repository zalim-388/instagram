part of 'search_reel_bloc.dart';

@immutable
sealed class SearchReelState {}

class SearchReelInitial extends SearchReelState {}

class SearchReelBlocLoading extends SearchReelState {}

class SearchReelBlocLoaded extends SearchReelState {
  final ReelModel searchreel;

  SearchReelBlocLoaded({required this.searchreel});
}

class SearchReelBlocError extends SearchReelState {}
