part of 'post_bloc_bloc.dart';

@immutable
sealed class PostBlocEvent {}
class fetchpost extends PostBlocEvent {}
class UpdateLikeEvent extends PostBlocEvent {}