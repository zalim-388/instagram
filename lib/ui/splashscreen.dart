import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/ui/Login.dart';

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
      body: Column(
        children: [
          SizedBox(
            height: 380,
          ),
          Center(
            child: Image.asset(
              'assets/image/pngegg.png',
              fit: BoxFit.cover,
              height: 100,
            ),
          ),
          SizedBox(
            height: 280,
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
