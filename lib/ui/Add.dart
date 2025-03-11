import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  File? _image; // Store the selected image
  final ImagePicker _picker = ImagePicker();

  // Function to pick image
  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close, color: Colors.white, size: 25),
        ),
        title: const Text(
          'New Post',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Handle the Next action
            },
            child: const Text('Next',
                style: TextStyle(color: Colors.blue, fontSize: 20)),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: _pickImage,
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[800],
              child: _image == null
                  ? const Icon(Icons.add_a_photo, color: Colors.white, size: 50)
                  : Image.file(_image!, fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
