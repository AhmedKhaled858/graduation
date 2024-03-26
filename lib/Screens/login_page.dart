// ignore_for_file: camel_case_types, use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graduation/Screens/second_page.dart';
import 'package:graduation/helper/show_snack_bar.dart';
import 'package:graduation/widgets/button.dart';
import 'package:graduation/widgets/custom_text_field.dart';

class login_page extends StatefulWidget {
  login_page({super.key});
  static String id = "Login Page";
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String? email;
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF9F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              height: 80,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'S',
                  style: TextStyle(
                    fontSize: 102,
                    fontWeight: FontWeight.bold,
                    // fontFamily: 'Rubik',
                    color: Colors.black,
                  ),
                ),
                Text(
                  'H',
                  style: TextStyle(
                    fontSize: 102,
                    fontWeight: FontWeight.bold,
                    //  fontFamily: 'Rubik',
                    color: Color(0xFF7939FF),
                  ),
                ),
                Text(
                  'A',
                  style: TextStyle(
                    fontSize: 102,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    //  fontFamily: 'Rubik',
                  ),
                ),
              ],
            ),
            const Text(
              'L O G I N',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontFamily: 'Rubik',
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChanged: (data) {
                email = data;
              },
              hintText: 'Email',
              icon: Icons.email,
            ),
            Container(
              height: 10,
            ),
            CustomTextField(
                onChanged: (data) {
                  password = data;
                },
                obscureText: true,
                hintText: "Password",
                icon: Icons.lock),
            Container(
              height: 10,
            ),
            CustomButton(
              text: 'Login',
              onTap: () async {
                try {
                  await loginUser();
                  Navigator.pushNamed(context, SecondScreen.id);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'user-not-found') {
                    showSnackBar(context, 'No user found for that email.');
                  } else if (e.code == 'wrong-password') {
                    showSnackBar(
                        context, 'Wrong password provided for that user.');
                  }
                } catch (e) {
                  showSnackBar(context, 'there was an error');
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
