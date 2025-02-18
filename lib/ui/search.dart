import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/Repositoy/Model%20class/profileModel.dart';

import 'package:instagram/bloc/search/search_bloc.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controller = TextEditingController();
  List<Map<dynamic,String> >_SearchData = [];
  @override
  void initState() {
    super.initState();
_SearchList=List.from(Data);
    BlocProvider.of<SearchBloc>(context).add(FecthSearch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          if (state is SearchBlocLoading) {
            print('loading...');
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is searchBlocError) {
            return Center(
              child: Text(
                'Something went wrong!',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            );
          } else if (state is SearchBlocLoaded) {
            var Data = state.searchinsta;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextField(
                      controller: _controller,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 20,
                        ),
                        hintText: 'search',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: Colors.black.withOpacity(0.6),
                        filled: true,
                      ),
                    ),
                  ),
                  if (_controller.text.isNotEmpty)
                    Expanded(
                        child: ListView.builder(
                      itemCount: Data.data.users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Container(
                            height: 70.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFBAA47),
                                  Color(0xFFD91A46),
                                  Color(0xFFA60F93)
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(''),
                                radius: 30,
                              ),
                            ),
                          ),
                        );
                      },
                    ))
                ],
              ),
            );
          }
          return Container();
        }));
  }
}
