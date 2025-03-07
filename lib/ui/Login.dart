import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram/ui/account.dart';
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

  Future<void> _registration(BuildContext context) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: _emailcontroller.text, password: _passwordcontroller.text);

      print("user Registered:${userCredential.user?.uid}");

      User? user = userCredential.user;
      if (user != null) {
        await user.sendEmailVerification();
        print("Veification email sent to  ${user.email}");
      }

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNav(),
          ));
    } catch (e) {
      print("Registration error:$e");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Registration failed:$e")));
    }
  }

  Future<void> _signinwithgoogle(BuildContext context) async {
    try {
      final GoogleSignIn _googlesignIn = GoogleSignIn();

      await _googlesignIn.signOut();

      final GoogleSignInAccount? Googleuser = await _googlesignIn.signIn();
      if (Googleuser == null) {
        print("Google Sigin  Canceled by user");
        return;
      }
      final GoogleSignInAuthentication googleAuth =
          await Googleuser!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      final User? user = userCredential.user;
      print("sigined with Google ");
      print("user id:${user?.uid}");
      print("Email:${user?.email}");
    } catch (error) {
      print("Sign in with Google Failed :$error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Account(),));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 130.h,
              ),
              Image.asset(
                'assets/image/pngegg.png',
                fit: BoxFit.contain,
                height: 50.h,
              ),
              SizedBox(
                height: 90.h,
              ),
              TextField(
                       style: TextStyle(color: Colors.white),
                controller: _emailcontroller,
                decoration: InputDecoration(
                    // fillColor: Colors.white,
                    // filled: true,
                    hintText: 'username,email address or mobile number',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextField(
                       style: TextStyle(color: Colors.white),
                controller: _passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    // fillColor: Colors.white,
                    // filled: true,
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () => _registration(context),
                // onTap: () => _login(
                //   context,
                //   _emailcontroller.text,
                //   _passwordcontroller.text,
                // ),
                child: Container(
                  height: 40.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextButton(
                    onPressed: () => _forgotPassword(context, _emailcontroller),
                    child: Align(
                      alignment: Alignment.center,
                      child: isloading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'Forgot password?',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      _signinwithgoogle(context);
                      print("Avatar pressed!");
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/image/Icon.png',
                          fit: BoxFit.contain,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Log in with Facebook',
                            style: TextStyle(color: Colors.blue, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 120.h,
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
                  height: 10.h,
                ),
              Row(
                children: [SizedBox(width:  150,),
                  Image.asset('assets/image/icons8-meta-24 (1).png',),
                  Text("Meta",style: TextStyle(color: Colors.grey,fontSize: 20),)
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }

  Future<void> _login(BuildContext context, String _emailController,
      String _passwordController) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: _emailcontroller.text, password: _passwordcontroller.text);

      print("user Registered:${userCredential.user?.uid}");

      User? user = userCredential.user;
      if (user != null) {
        await user.sendEmailVerification();
        print("Veification email sent to  ${user.email}");
      }

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNav(),
          ));
    } catch (e) {
      print("Registration error:$e");
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Registration failed:$e")));
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _emailController.trim(), password: _passwordController);

      if (userCredential.user != null) {
        if (userCredential.user!.emailVerified) {
          print("User logged in: ${userCredential.user!.uid}");
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNav()),
          );
        } else {
          print("User's email is not verified.");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  "Your email is not verified. Please verify your email before logging in."),
            ),
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
    }
    // } else {
    //     print("Login failed.");
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(content: Text("Login failed. Check your Details")),
    //     );
    //   }
    // } catch (e) {
    //   print("Login error: $e");
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(content: Text("Login failed. Please check your credentials.")),
    //   );
    // }
  }

  // Future<void> _Login(
  //   BuildContext context,
  //   String email,
  //   String password,
  // ) async {
  //   if (email.isEmpty || password.isEmpty) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("Please enter both email and password.")),
  //     );

  //     return;
  //   }

  //   setState(() {
  //     isloading = true;
  //   });

  //   try {
  //     UserCredential userCredential = await _auth.signInWithEmailAndPassword(
  //       email: email.trim(),
  //       password: password.trim(),
  //     );
  //     if (userCredential.user != null) {
  //       if (userCredential.user!.emailVerified) {
  //         print("User Login: ${userCredential.user!.uid}");
  //         Navigator.pushReplacement(
  //           context,
  //           MaterialPageRoute(builder: (context) => BottomNav()),
  //         );
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text("Email not verified. Check your email")),
  //         );
  //       }
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     String errorMessage;
  //     switch (e.code) {
  //       case 'invalid-credential':
  //         errorMessage = 'Invalid email or password.';
  //         break;
  //       case 'user-not-found':
  //         errorMessage = 'No account exists for this email.';
  //         break;
  //       case 'wrong-password':
  //         errorMessage = 'Incorrect password.';
  //         break;
  //       case 'too-many-requests':
  //         errorMessage =
  //             'Device blocked due to unusual activity. Try again later.';
  //         break;
  //       default:
  //         errorMessage = 'Login failed: ${e.message}';
  //     }
  //     print("Login error: ${e.code} - ${e.message}");
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text(errorMessage)),
  //     );
  //   } catch (e) {
  //     print("Unexpected error: $e");
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("An unexpected error occurred.")),
  //     );
  //   } finally {
  //     setState(() {
  //       isloading = false;
  //     });
  //   }
  // }

  // finally {
  //     setState(() {
  //       isloading = false;
  //     });
  //   }

  Future<void> _forgotPassword(
      BuildContext context, TextEditingController emailController) async {
    if (emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter your email.")),
      );
      return;
    }
    setState(() {
      isloading = true;
    });

    try {
      // Set language to avoid Firebase locale warning
      _auth.setLanguageCode("en");

      await _auth.sendPasswordResetEmail(email: emailController.text);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Password reset email sent. Check your inbox.")),
      );
    } catch (e) {
      print("Forgot Password error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Password reset failed. Check your email address.")),
      );
    } finally {
      setState(() {
        isloading = false;
      });
    }
  }
}
