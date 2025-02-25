import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:instagram/ui/account.dart';

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
            builder: (context) => Account(),
          )),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 380.h,
          ),
          Center(
            child: Image.asset(
              'assets/image/pngegg.png',
              fit: BoxFit.cover,
              height: 100.h,
            ),
          ),
          SizedBox(
            height: 280.h,
          ),
          Text(
            'From',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    );
  }
}
