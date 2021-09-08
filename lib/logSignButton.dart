import 'package:flutter/material.dart';


class LogSignButton extends StatelessWidget {
  final String text;

  LogSignButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 40,
      child: FlatButton(
        color: Colors.blue.shade200,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}