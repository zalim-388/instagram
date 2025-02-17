part of 'insta_bloc.dart';

@immutable
abstract class InstaState {}

class Instainitial extends InstaState {}

class InstaBlocLoading extends InstaState {}

class InstaBlocLoaded extends InstaState {
  late ProfileModel instagram;
  late Searchmodel search;

  InstaBlocLoaded({required this.instagram, required this.search});
}

class InstaBlocErro extends InstaState {}
