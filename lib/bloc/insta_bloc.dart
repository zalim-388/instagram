import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Repositoy/Api/insta_Api.dart';
import 'package:instagram/Repositoy/Model%20class/insta_Model.dart';

part 'insta_evant.dart';
part 'insta_state.dart';


class InstaBloc extends Bloc<InstaEvant, InstaState> {
InstaApi api=InstaApi();


late List<InstaModel> instagram;

InstaBloc():super (Instainitial()){

  on<Fecthinsta>((event, emit) async{
    
    emit(InstaBlocLoading());

try {
  instagram=await api.getinsta();
emit(InstaBlocLoaded(instagram: instagram
  
));


} catch (e){
    emit(InstaBlocErro());
}

  },);
}

}