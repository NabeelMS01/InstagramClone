import 'dart:ffi';

import 'package:flutter/material.dart';

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
            InputField(icon:null,

              hint: "Phone number, email or username",


            ),
            SizedBox(height: 20,),
            InputField(icon:  Icons.remove_red_eye,
              hint: "Password",


            ),

          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {

 final String hint;
 final IconData? icon;

 InputField({required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
      color: Colors.grey.shade50),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(

          decoration: InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,



            hintText: hint,
            suffixIcon: true ? Icon(
             icon,
              color: Colors.grey,
            ):null,
          ),
        ),
      ),
    );
  }
}
