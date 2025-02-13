import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                    hintText: 'search',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    focusedBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    fillColor: Color(262626),
                    filled: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
