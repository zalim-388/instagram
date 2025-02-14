import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/insta_bloc.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {
 int  index=0;
    @override
  void initState() {
    super.initState();

    BlocProvider.of<InstaBloc>(context).add(Fecthinsta());
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.black,
            body: BlocBuilder<InstaBloc, InstaState>(builder: (context, state) {
              if (state is InstaBlocLoading) {
                print('loading...');

                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is InstaBlocErro) {
                return Center(
                  child: Text(
                    'Something went wrong!',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                );
              } else if (state is InstaBlocLoaded) {
              var data = state.instagram;
              


        return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Row(
                          children: [
                            Text(
                              data.data.fullName,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                  size: 25,
                                )),
                            SizedBox(
                              width: 175.w,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 25,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 96.h,
                                width: 96.w,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 3),
                                    shape: BoxShape.circle),
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundImage: AssetImage(
                                      'assets/image/IMG_20250211_083815_295.jpg'),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Video creator',
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 15),
                                  ),
                                  Text('.\n.\n.',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15))
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SALIM',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(children: [
                                Text(
                                  '   0\nPosts',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  '   1k\nFollowers',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                Text(
                                  '   450\nFollowing',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 29.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Edit Profile',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            height: 29.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'Share Profile',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 30,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 40,
                                        )),
                                  ),
                                ),
                                Text(
                                  'New',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40,
                                  ),
                                ),
                                Text(
                                  'Friends',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40,
                                  ),
                                ),
                                Text(
                                  'Sport ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40,
                                  ),
                                ),
                                Text(
                                  'Design',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 70.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey, width: 1),
                                      shape: BoxShape.circle),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 40,
                                  ),
                                ),
                                Text(
                                  '.',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      TabBar(
                          dividerColor: Colors.transparent,
                          indicatorColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              icon: Icon(
                                Icons.grid_on_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.person_pin_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            )
                          ]),
                      Expanded(
                          child: TabBarView(children: [
                        Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100.h,
                              ),
                              Text(
                                'Capture the moment with a friend',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Create your first post',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 17),
                                  )),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100.h,
                            ),
                            Center(
                              child: Icon(
                                Icons.person_pin_outlined,
                                color: Colors.white,
                                size: 45,
                              ),
                            )
                          ],
                        )
                      ]))
                    ],
                  ),
                );

              }
              return Container();
            })));
  }
}
