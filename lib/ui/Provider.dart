// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:instagram/ui/Add.dart';

// class PostProvider with ChangeNotifier {
//   final List<String> _post = [];

//   List<String> get posts => _post;

//   void Addpost(String post) {
//     _post.add(post);
//     notifyListeners();
//   }

//   void removepost(int index) {
//     _post.removeAt(index);
//   }

//   void postclear() {
//     _post.clear();
//     notifyListeners();
//   }

//   Future<void> SinglePicker() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? image = await picker.pickImage(source: ImageSource.gallery);

//     if (image != null) {
//       print("selected image:${image.path}");
//     } else {
//       print('No image selected');
//     }
//   }
// }
