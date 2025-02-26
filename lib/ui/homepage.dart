import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/search_reel/search_reel_bloc.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, String>> Story = [
    {"Name": "Your Story", "image": "assets/image/IMG_20250211_083815_295.jpg"},
    {
      "Name": "trentarnold66",
      "image": "assets/image/bb51a152b060c49dde7bff9f0dbddd4b.png"
    },
    {"Name": "joshua_l", "image": "assets/image/Oval.png"},
    {"Name": "kieron_d", "image": "assets/image/Inner Oval (1).png"},
    {"Name": "Liverpoolfc", "image": "assets/image/liverpool_logo_PNG5.png"},
    {
      "Name": "trentarnold66",
      "image": "assets/image/bb51a152b060c49dde7bff9f0dbddd4b.png"
    },
    {"Name": "kieron_d", "image": "assets/image/Inner Oval (1).png"},
  ];

  List<String> imgList = [
    // 'assets/image/472591809_1106835591114654_449771123459361449_n.jpg',
    // 'assets/image/472641821_430513536808151_3860618460506866105_n.jpg',
    // 'assets/image/Christmas_Number 1.jpg'
  ];

  int currentindex = 0;

  bool favorite = false;

  void isfavorite() {
  setState(() {
    favorite = !favorite;
  });
}
List<Widget> imageSliders = [];

@override
void initState() {
  super.initState();
  BlocProvider.of<SearchReelBloc>(context).add(fetchSearchReel());
  // imageSliders = imgList
  //     .map((item) => ClipRRect(
  //           child: Image.network(
  //             item,
  //             fit: BoxFit.cover,
  //           ),
  //         ))
  //     .toList();
}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/Instagram Logo (1).png',
                        fit: BoxFit.contain,
                        height: 20.h,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 25,
                          )),
                      SizedBox(
                        width: 125.w,
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                    height: 100.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Story.length,
                      itemBuilder: (context, index) {
                        final story = Story[index];
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Container(
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
                                      backgroundImage:
                                          AssetImage(story["image"] ?? ''),
                                      radius: 30,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                story["Name"] ?? '',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              )
                            ],
                          ),
                        );
                      },
                    )),
                SizedBox(
                  height: 10.h,
                ),
                BlocBuilder<SearchReelBloc, SearchReelState>(
                  builder: (context, state) {
                    if (state is SearchReelBlocLoading) {
                      print('Loading..');
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      );
                    } else if (state is SearchReelBlocError) {
                      return Center(
                        child: Text(
                          'something went worng',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    } else if (state is SearchReelBlocLoaded) {
                      var data = state.searchreel;
                      // imgList = data.data.items[0].carouselMedia!
                      //     .map<String>((item) => item.mediaName.toString())
                      //     .toList();
                      return Column(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  data.data.user.profilePicUrl.toString()),
                              // backgroundImage: AssetImage(

                              // // 'assets/image/bb51a152b060c49dde7bff9f0dbddd4b.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Text(
                                    // "trentarnold66",
                                    data.data.user.username.toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  Text(
                                    'Anfield,Liverpool',
                                    // data.data.items[0].location.toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.verified,
                              color: Colors.blue,
                              size: 16,
                            ),
                            SizedBox(
                              width: 175.w,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert_outlined,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        CarouselSlider(
                          items:[
                            Image.network(
                              data.data.items[0].carouselMedia
                                  .toString(),
                              fit: BoxFit.cover,
                            ),
                          ],
                     
                          options: CarouselOptions(
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentindex = index;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  favorite
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: favorite ? Colors.red : Colors.white,
                                  size: 25,
                                )),
                            Text(
                              data.data.items[0].likeCount.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.chat_bubble_outline_outlined,
                                  color: Colors.white,
                                  size: 25,
                                )),
                            Text(
                              data.data.items[0].commentCount.toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                            Transform.rotate(
                              angle: -0.5,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.send_outlined,
                                    color: Colors.white,
                                    size: 25,
                                  )),
                            ),
                            // Text(data.data.items[0].shareCountDisabled.toString(),
                            //     style: TextStyle(color: Colors.white)),
                            SizedBox(
                              width: 20.w,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imgList.map((url) {
                                int index = imgList.indexOf(url);
                                return Container(
                                  width: 6.0,
                                  height: 6.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentindex == index
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                );
                              }).toList(),
                            ),
                            SizedBox(
                              width: 90.w,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outline_sharp,
                                  size: 25,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(
                                  'assets/image/liverpool_logo_PNG5.png'),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Like by liverpoolfc and others',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            // 'trentarnold66 ChristmasNumber 1 #YNWA ',
                            data.data.items[0].caption.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '23 December 2024 ',
                            style:
                                TextStyle(color: Colors.white54, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                  'assets/image/liverpool_logo_PNG5.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Column(
                                children: [
                                  Text(
                                    'Liverpoolfc',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  Text(
                                    '   Anfield,Liverpool',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 0.w),
                            Icon(
                              Icons.verified,
                              color: Colors.blue,
                              size: 16,
                            ),
                            SizedBox(
                              width: 175.w,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert_outlined,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        Image.asset(
                          'assets/image/imagesvoltaxMediaLibrarymmsportl.png',
                          // data.data.items[0].carouselMedia.toString(),
                          fit: BoxFit.cover,
                        )
                      ]);
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
