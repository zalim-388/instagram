import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/search/search_bloc.dart';
import 'package:instagram/bloc/search_reel/search_reel_bloc.dart';
import 'package:instagram/ui/homepage.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _controller = TextEditingController();
  List<dynamic> _SearchData = [];
  List<dynamic> _suggestedData = [];

  @override
  void initState() {
    super.initState();
    _SearchData = List.from([]);
    _suggestedData = List.from([]);
    BlocProvider.of<SearchBloc>(context).add(FecthSearch());
    BlocProvider.of<SearchReelBloc>(context).add(fetchSearchReel());
  }

  void _SearchList(String query) {
    setState(() {
      _suggestedData = query.isEmpty
          ? List.from(_SearchData)
          : _SearchData.where((item) {
              return (item.username?.toLowerCase() ?? '')
                      .contains(query.toLowerCase()) ||
                  (item.fullName?.toLowerCase() ?? '')
                      .contains(query.toLowerCase());
            }).toList();
    });
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
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: TextField(
            controller: _controller,
            onChanged: _SearchList,
            cursorColor: Colors.white,
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
              fillColor: Colors.black.withOpacity(0.8),
              filled: true,
            ),
          ),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          if (state is SearchBlocLoading) {
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
            print('Search Data: ${state.searchinsta}');
            var data = state.searchinsta;
            _SearchData = data.data.users;

            return Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                if (_controller.text.isNotEmpty)
                  Expanded(
                      child: ListView.builder(
                    itemCount: _SearchData.length,
                    itemBuilder: (context, index) {
                      final user = _SearchData[index];
                      return ListTile(
                        leading: Container(
                          height: 80.h,
                          width: 80.w,
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
                              backgroundImage:
                                  NetworkImage(user.profilePicUrl ?? ''),
                              radius: 40,
                            ),
                          ),
                        ),
                        title: Text(
                          user.username ?? '',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        subtitle: Text(
                          user.fullName ?? '',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                _SearchData.removeAt(index);
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 15,
                            )),
                      );
                    },
                  )),
              ],
            );
          }return Container();
          // } else {
          //   return BlocBuilder<SearchReelBloc, SearchReelState>(
          //       builder: (context, state) {
          //     if (state is SearchReelBlocLoading) {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     } else if (state is searchBlocError) {
          //       return Center(
          //         child: Text(
          //           'Something went wrong!',
          //           style: TextStyle(color: Colors.white, fontSize: 25),
          //         ),
          //       );
          //     } else if (state is SearchReelBlocLoaded) {
          //       var data = state.searchreel;
          //       data.data.items;
          //       if (_controller.text.isNotEmpty) {
          //         return Expanded(
          //             child: ListView.builder(
          //           itemCount: data.data.items.length,
          //           itemBuilder: (context, index) {
          //             return Container(
          //               height: 200.h,
          //               width: 250.w,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(
          //                     image: NetworkImage(
          //                         data.data.items[0].thumbnailUrl),
          //                     fit: BoxFit.cover),
          //                 shape: BoxShape.circle,
          //               ),
          //             );
          //           },
          //         ));
          //       }
          //     }

          //     return Container();
          //   });
          // }
        }));
  }
}
