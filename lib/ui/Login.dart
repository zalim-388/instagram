import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram/ui/bottomnavi.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
                controller: _emailcontroller,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
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
                controller: _passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
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
                    onPressed: () =>
                        _forgotpassword(context, _auth, _emailcontroller),
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () => _Login(
                  context,
                  _emailcontroller.text,
                  _passwordcontroller.text,
                ),
                child: Container(
                  height: 44.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: isloading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
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
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Sign up.',
                        style: TextStyle(color: Colors.blue, fontSize: 14))
                  ])),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNav()));
                },
                child: Text('Already have an account'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _Login(
    BuildContext context,
    String email,
    String password,
  ) async {
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter both email and password.")),
      );

      return;
    }

    setState(() {
      isloading = true;
    });

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      if (userCredential.user != null) {
        if (userCredential.user!.emailVerified) {
          print("User Login: ${userCredential.user!.uid}");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNav()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Email not verified. Check your email")),
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'invalid-credential':
          errorMessage = 'Invalid email or password.';
          break;
        case 'user-not-found':
          errorMessage = 'No account exists for this email.';
          break;
        case 'wrong-password':
          errorMessage = 'Incorrect password.';
          break;
        case 'too-many-requests':
          errorMessage =
              'Device blocked due to unusual activity. Try again later.';
          break;
        default:
          errorMessage = 'Login failed: ${e.message}';
      }
      print("Login error: ${e.code} - ${e.message}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } catch (e) {
      print("Unexpected error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An unexpected error occurred.")),
      );
    } finally {
      setState(() {
        isloading = false;
      });
    }
  }

  Future<void> _forgotpassword(
      BuildContext context, _auth, dynamic _emailcontroller) async {
    try {
      await _auth.sendPasswordResetEmail(email: _emailcontroller);

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Check your email for the password rest link")));
    } catch (e) {
      print("forget paassword$e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text("Rest attempt unsuccessful.please Confirm youer email")));
    }
  }

// class LoginPage extends StatelessWidget {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login"),
//         backgroundColor: Colors.red[900],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextFormField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             ElevatedButton(
//               onPressed: () => _login(context),
//               child: Text('Login'),
//             ),
//             TextButton(
//               onPressed: () {
//                 _forgotPassword(context);
//               },
//               child: Text(
//                 'Forgot Password',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Future<void> _login(BuildContext context) async {
//   //   try {
//   //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//   //       email: _emailController.text,
//   //       password: _passwordController.text,
//   //     );

//   //     if (userCredential.user != null) {
//   //       if (userCredential.user!.emailVerified) {
//   //         print("User logged in: ${userCredential.user!.uid}");
//   //         Navigator.pushReplacement(
//   //           context,
//   //           MaterialPageRoute(builder: (context) => StudentListScreen()),
//   //         );
//   //       } else {
//   //         print("User's email is not verified.");
//   //         ScaffoldMessenger.of(context).showSnackBar(
//   //           SnackBar(
//   //             content: Text(
//   //                 "Your email is not verified. Please verify your email before logging in."),
//   //           ),
//   //         );
//   //       }
//   //     } else {
//   //       print("Login failed.");
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         SnackBar(content: Text("Login failed. Check your Details")),
//   //       );
//   //     }
//   //   } catch (e) {
//   //     print("Login error: $e");
//   //     ScaffoldMessenger.of(context).showSnackBar(
//   //       SnackBar(content: Text("Login failed. Add valid Details.")),
//   //     );
//   //   }
//   // }

//   Future<void> _forgotPassword(BuildContext context) async {
//     try {
//       await _auth.sendPasswordResetEmail(email: _emailController.text);
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Password reset email sent. Check your inbox."),
//         ),
//       );
//     } catch (e) {
//       print("Forgot Password error: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Password reset failed. Check your email address."),
//         ),
//       );
//     }
//   }
// }
}
