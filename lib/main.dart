import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/Story_/story_bloc.dart';
import 'package:instagram/bloc/post/post_bloc_bloc.dart';
import 'package:instagram/bloc/profile/insta_bloc.dart';
import 'package:instagram/bloc/search/search_bloc.dart';
import 'package:instagram/bloc/search_reel/search_reel_bloc.dart';
import 'package:instagram/ui/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      // ChangeNotifierProvider(
        // create: (context) => PostProvider(),
        // child:
         const MyApp(),
      // ),
  );
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
        BlocProvider<SearchReelBloc>(create: (context) => SearchReelBloc()),
        BlocProvider<PostBlocBloc>(
          create: (context) => PostBlocBloc(),
        ),
        BlocProvider<StoryBloc>(
          create: (context) => StoryBloc(),
        )
      ],
      child: ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (context, child) => MaterialApp(
              debugShowCheckedModeBanner: false, home: Splashscreen())),
    );
  }
}
