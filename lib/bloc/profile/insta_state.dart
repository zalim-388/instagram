part of 'insta_bloc.dart';

@immutable
abstract class InstaState {}

class Instainitial extends InstaState {}

class InstaBlocLoading extends InstaState {}

class InstaBlocLoaded extends InstaState {
  final ProfileModel instagram;

  InstaBlocLoaded({
    required this.instagram,
  });
}

class InstaBlocError extends InstaState {}
