import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram/ui/Login.dart';

class Registration extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

void _registration(BuildContext context) async {
  try {
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: _emailController.text.trim(), // Ensure no whitespace
      password: _passwordController.text,
    );
    print("User registered: ${userCredential.user?.uid}");
    await userCredential.user?.sendEmailVerification();
    print("Email verification sent");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  } catch (e) {
    print("Registration error: $e");
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Registration failed: $e')),
    );
  }
}

  Future<void> _signinwithgoogle(BuildContext context) async {
    try {
      final GoogleSignIn _googlesignIn = GoogleSignIn();
      await _googlesignIn.signOut;

      final GoogleSignInAccount? Googleuser = await _googlesignIn.signIn();

      if (Googleuser == null) {
        print("Google Sign-In canceled by user.");
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

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
      } catch (error) {
        print("Sign in with Google failed: $error");
      }
    }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(




appBar: AppBar(
          title: Text(
            "Registration",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple[600]),
      body: Padding(
          padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _registration(context);
                },
                child: Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text('Already have an account'),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => PhoneAuthScreen(),
                //           ));
                //     },
                //     child: Icon(Icons.phone)),
                // SizedBox(
                //   width: 20,
                // ),
                //       ElevatedButton(
                //           onPressed: () => _signInWithGoogle(context),
                //           child: Image.network(
                //     'http://pngimg.com/uploads/google/google_PNG19635.png',
                //     fit:BoxFit.cover
                // )               )
                InkWell(
                    onTap: () {
                      _signinwithgoogle(context);

                      print('Avatar pressed!');
                    },
                    child: const CircleAvatar(
                        radius: 22,
                        backgroundImage: NetworkImage(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                        )))
              ])
            ],
          )),




      );
    }
  }

