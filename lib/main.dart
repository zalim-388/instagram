import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/profile/insta_bloc.dart';
import 'package:instagram/bloc/search/search_bloc.dart';
import 'package:instagram/bloc/search_reel/search_reel_bloc.dart';
import 'package:instagram/ui/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InstaBloc>(
          create: (context) => InstaBloc(),
        ),
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(),
        ),
        BlocProvider<SearchReelBloc>(create: (context) => SearchReelBloc())
      ],
      child: ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false, home: Splashscreen())),
    );
  }
}
