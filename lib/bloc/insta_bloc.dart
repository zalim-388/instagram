import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Repositoy/Api/profile_Api/profile_Api.dart';
import 'package:instagram/Repositoy/Model%20class/profileModel.dart';
import 'package:instagram/Repositoy/Model%20class/search_Model.dart';


part 'insta_event.dart';
part 'insta_state.dart';

class InstaBloc extends Bloc<InstaEvent, InstaState> {
  ProfileApi api = ProfileApi();
  Searchmodel apisearch = Searchmodel();

  late ProfileModel instagram;
  late Searchmodel search;

  InstaBloc() : super(Instainitial()) {
    on<Fecthinsta>(
      (event, emit) async {
        emit(InstaBlocLoading());

        try {
          instagram = await api.getinsta();
          search = await apisearch.getsearch();

          emit(InstaBlocLoaded(instagram: instagram, search: search));
        } catch (e) {
          print(e);
          emit(InstaBlocError());
        }
      },
    );
  }
}
