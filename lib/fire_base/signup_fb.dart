import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:housing_app/fire_base/login_fb.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class FirebaseSignup extends StatefulWidget {
  const FirebaseSignup({super.key});

  @override
  State<FirebaseSignup> createState() => _FirebaseSignupState();
}

class _FirebaseSignupState extends State<FirebaseSignup> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  registeruser() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      print('User registered: ${userCredential.user?.email}');
      final snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'User Registered!',
          message: '${userCredential.user?.email} has been added.',
          contentType: ContentType.success,
        ),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FirebaseLogin()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        const snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: 'Can not Register!',
            message: 'The account already exists for that email.',
            contentType: ContentType.failure,
          ),
        );
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      } else if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else {
        print('Error: ${e.message}');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo2.png',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text('SignUp to your account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            SizedBox(
              width: 500,
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 10), // Add spacing between TextFields
                  TextField(
                    controller: passwordController,
                    obscureText: true, // To hide password text
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 20), // Add spacing before the button
                  ElevatedButton(
                      onPressed: () async {
                        await registeruser();
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 30),
                          backgroundColor: const Color.fromARGB(
                              255, 98, 198, 234)), // Call the login function
                      child: const Text('Register',
                          style: TextStyle(fontSize: 14, color: Colors.black))),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirebaseLogin()));
                    }, // Call the login function
                    child: const Text('Already have an account? Login',
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
