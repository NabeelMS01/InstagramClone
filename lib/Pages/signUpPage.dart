import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:instagram_clone/Pages/loginPage.dart';

import '../inputField.dart';
import '../logSignButton.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 300,
                height: 300,
                child: Image.network(
                    "https://i0.wp.com/www.dafontfree.io/wp-content/uploads/2020/12/instagram-new.png?resize=1100%2C750&ssl=1"),
              ),
            ),
            InputField(
              icon: null,
              hint: "Phone number, email or username",
            ),
            SizedBox(
              height: 20,
            ),
            InputField(
              icon: Icons.remove_red_eye,
              hint: "Password",
            ),
            SizedBox(
              height: 20,
            ),
            InputField(
              icon: Icons.remove_red_eye,
              hint: "Confirm password",
            ),
            SizedBox(
              height: 20,
            ),

            LogSignButton(
              text:" Sign up",

            )

          ],
        ),
      ),
    );
  }
}

