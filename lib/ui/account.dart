import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/ui/Login.dart';
import 'package:instagram/ui/bottomnavi.dart';

import '../bloc/profile/insta_bloc.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<InstaBloc>(context).add(Fecthinsta());
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 18, 40),
        // backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SizedBox(
              height: 180.h,
            ),
            BlocBuilder<InstaBloc, InstaState>(builder: (context, state) {
              if (state is InstaBlocLoading) {
                print('loading...');

                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is InstaBlocError) {
                return const Center(
                  child: Text(
                    'Something went wrong!',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                );
              } else if (state is InstaBlocLoaded) {
                var data = state.instagram;
return
            Column(
              children: [
                Image.asset(
                  'assets/image/pngegg.png',
                  fit: BoxFit.contain,
                  height: 44.h,
                  width: 182.w,
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 58,
                    // backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(data.data.user.profilePicUrl),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  // "Zaliiim__",
                  data.data.user.username.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 15.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40.h,
                    width: 340.w,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text(
                      "Use another profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    )),
              
                SizedBox(
                  height: 200.h,
                ),
              
               GestureDetector(
                child: Container(
                  height: 40.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Create new Account',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              ),

  SizedBox(
                  height: 20.h,
                ),
              Row(
                children: [SizedBox(width:  150,),
                  Image.asset('assets/image/icons8-meta-24 (1).png',),
                  Text("Meta",style: TextStyle(color: Colors.grey,fontSize: 20),)
                ],
              ),
            
              ],
            );
              }
              return Container();
            }),
          ]),
        ));
  }
}
