part of 'story_bloc.dart';

@immutable
sealed class StoryState {}

class StoryInitial extends StoryState {}

class StoryBlocLoading extends StoryState {}

class StoryBlocLoaded extends StoryState {
  final StoryModel Stories;

  StoryBlocLoaded({required this.Stories});
}

class StoryBlocError extends StoryState {}
