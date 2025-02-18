import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Repositoy/Api/profile_Api/profile_Api.dart';

import 'package:instagram/Repositoy/Model%20class/profileModel.dart';

part 'insta_state.dart';
part 'insta_evant.dart';

class InstaBloc extends Bloc<Instaevent, InstaState> {
  ProfileApi api = ProfileApi();

  late ProfileModel instagram;

  InstaBloc() : super(Instainitial()) {
    on<Fecthinsta>(
      (event, emit) async {
        emit(InstaBlocLoading());

        try {
          instagram = await api.getinsta();

          emit(InstaBlocLoaded(
            instagram: instagram,
          ));
        } catch (e) {
          print(e);
          emit(InstaBlocError());
        }
      },
    );
  }
}
