import 'package:flutter/material.dart';
import 'package:instagram/ui/homepage.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Homepage()));
          },
          icon: Icon(
            Icons.close,
            color: Colors.white,
            size: 25,
          ),
        ),
        title: const Text(
          'New Post',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Next',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ))
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
