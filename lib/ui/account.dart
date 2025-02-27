import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/bloc/profile/insta_bloc.dart';
import 'package:instagram/ui/Login.dart';

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
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
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

                return Column(
                  children: [
                    Image.asset(
                      'assets/image/Instagram Logo (1).png',
                      fit: BoxFit.contain,
                      height: 44.h,
                      width: 182.w,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      height: 96.h,
                      width: 96.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 3),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(data.data!.profilePicUrl.toString()),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      data.data!.username.toString(),
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
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: Container(
                        height: 44.h,
                        width: 307.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Log in',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return Container();
            }),
            SizedBox(
              height: 20.h,
            ),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Switch accounts',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                )),
            SizedBox(
              height: 190.h,
            ),
            Divider(
              color: Colors.grey.shade800,
              thickness: 1,
            ),
            SizedBox(
              height: 15.h,
            ),
            RichText(
                text: TextSpan(
                    text: 'Don’t have an account?',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Sign up.',
                      style: TextStyle(color: Colors.white, fontSize: 14))
                ])),
          ]),
        ));
  }
}
