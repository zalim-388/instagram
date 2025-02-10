import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/Login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          )),
    );
  }

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,
    );
  }
}
