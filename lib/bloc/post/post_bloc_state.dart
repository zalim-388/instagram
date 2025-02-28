part of 'post_bloc_bloc.dart';

@immutable
sealed class PostBlocState {}

final class PostBlocInitial extends PostBlocState {}

class postBlocLoading extends  PostBlocState{}

class postBlocLoaded extends PostBlocState {
  final postmodel posts;

  postBlocLoaded({required this.posts});
}

class postBlocError extends PostBlocState {}