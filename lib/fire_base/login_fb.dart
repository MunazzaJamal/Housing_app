import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:housing_app/dashboard.dart';
import 'package:housing_app/fire_base/signup_fb.dart';

//registered email: abc@gmail.com
//password: abc#@!

class FirebaseLogin extends StatefulWidget {
  const FirebaseLogin({super.key});

  @override
  State<FirebaseLogin> createState() => _FirebaseLoginState();
}

class _FirebaseLoginState extends State<FirebaseLogin> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  login() async {
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      print('Login successful: ${credential.user?.email}');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Dashboard_view()), // replace with your screen
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        print('No user found for that email.');
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login Failed'),
              content: const Text('Wrong User email or password.'),
              actions: [
                TextButton(
                  onPressed: () {
                    // Close the dialog and allow user to try again
                    Navigator.of(context).pop();
                  },
                  child: const Text('Try Again'),
                ),
              ],
            );
          },
        );
      } else {
        print('Else condition: ${e.code}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo2.png',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              const Text('Login to your account',
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
                    const SizedBox(
                        height: 10), // Add spacing between TextFields
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
                          await login();
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 30),
                            backgroundColor: const Color.fromARGB(
                                255, 98, 198, 234)), // Call the login function
                        child: const Text('Sign in',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black))),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forgot the password?',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 30, 117, 149),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1, // Line thickness
                            color: Colors.grey, // Line color
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'or continue with',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1, // Line thickness
                            color: Colors.grey, // Line color
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print('Square button clicked!');
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(80, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Icon(Icons.facebook,
                              color: Colors.blue, size: 35),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print('Square button clicked!');
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(80, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Icon(Icons.g_mobiledata,
                              color: Colors.blue, size: 35),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            print('Square button clicked!');
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(80, 60),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Icon(Icons.apple,
                              color: Colors.black, size: 35),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FirebaseSignup(),
                          ),
                        );
                      },
                      child: const Text(
                        'Don\'t have an account? Sign up',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 30, 117, 149),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
