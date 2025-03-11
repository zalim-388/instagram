import 'dart:io';
import 'package:flutter/material.dart';
import 'package:instagram/ui/homepage.dart';
import 'package:image_picker/image_picker.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  String? picture;
  File? pictureFile;

  /// Function to update the selected image
  void updateSelectedPicture(String path) {
    setState(() {
      picture = path;
      pictureFile = File(path);
    });
  }

  /// Function to get the selected image
  ImageProvider getImage(String? picture) {
    return FileImage(File(picture!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          },
          icon: const Icon(
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
            onPressed: () {
              // TODO: Implement the "Next" button functionality
            },
            child: const Text(
              'Next',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          /// Image Picker Button
          IconButton(
            icon: const Icon(Icons.add_a_photo, color: Colors.white, size: 40),
            onPressed: () async {
              final ImagePicker _picker = ImagePicker();
              final XFile? photo = await _picker.pickImage(
                source: ImageSource.gallery,
              );

              if (photo != null) {
                updateSelectedPicture(photo.path);
              }
            },
          ),

          /// Display Selected Image
          if (picture != null)
            Container(
              margin: const EdgeInsets.all(10),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: getImage(picture),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
        ],
      ),
    );
  }
}
