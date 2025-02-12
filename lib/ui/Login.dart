import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/ui/bottomnavi.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Image.asset(
                'assets/image/Instagram Logo (1).png',
                fit: BoxFit.contain,
                height: 50.h,
              ),
              SizedBox(
                height: 50.h,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'username',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 230),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav(),));
                },
                child: Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.w,
                  ),
                  Image.asset(
                    'assets/image/Icon.png',
                    fit: BoxFit.contain,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Log in with Facebook',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ))
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              RichText(
                  text: TextSpan(
                      text: 'Don’t have an account?',
                      style: TextStyle(color: Colors.grey,fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up.',style: TextStyle(color: Colors.blue,fontSize: 14)
                        )
                      ]
                      
                      )),
                      
            ],
          ),
        ),
      ),
    );
  }
}
