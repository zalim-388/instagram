import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:instagram/bloc/insta_bloc.dart';
import 'package:instagram/ui/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false, home: Splashscreen()));
  }
}
