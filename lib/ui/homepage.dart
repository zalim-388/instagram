import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    {"Name": "joshua_l", "image": "assets/image/Oval.png"},
    {
      "Name": "trentarnold66",
      "image": "assets/image/bb51a152b060c49dde7bff9f0dbddd4b.png"
    },
    {"Name": "kieron_d", "image": "assets/image/Inner Oval (1).png"},
  ];

  final List<String> imgList = [
    'assets/image/472591809_1106835591114654_449771123459361449_n.jpg',
    'assets/image/472641821_430513536808151_3860618460506866105_n.jpg',
    'assets/image/472404098_1267403471153607_517156847629932590_n.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => ClipRRect(
              child: Image.asset(
                item,
                fit: BoxFit.contain,
              ),
            ))
        .toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,

        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.camera_alt_outlined,
        //     color: Colors.white,
        //   ),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(right: 60),
          child: Image.asset(
            'assets/image/Instagram Logo (1).png',
            fit: BoxFit.cover,
            height: 25,
          ),
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Colors.white,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              SizedBox(
                  height: 100.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Story.length,
                    itemBuilder: (context, index) {
                      final story = Story[index];
                      return Column(
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
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      );
                    },
                  )),
              SizedBox(
                height: 10.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        'assets/image/bb51a152b060c49dde7bff9f0dbddd4b.png'),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "trentarnold66",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      Text(
                        'Anfield,Liverpool',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(width: 4.w),
                  Icon(
                    Icons.verified,
                    color: Colors.blue,
                    size: 16,
                  ),
                  SizedBox(
                    width: 170.w,
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
                items: imageSliders,
                options: CarouselOptions(),
              ),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   children: [
              //     IconButton(
              //         onPressed: () {},
              //         icon: Icon(Icons.favorite_border_outlined))
              //   ],
              // )


// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: imgList.map((url) {
//     int index = imgList.indexOf(url);
//     return Container(
//       width: 8.0,
//       height: 8.0,
//       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: currentIndex == index
//             ? Colors.purple.shade900
//             : Colors.grey.shade400,
//       ),
//     );
//   }).toList(),
// )

            ],
          ),
        ),
      ),
    );
  }
}
