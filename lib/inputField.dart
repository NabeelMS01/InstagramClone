import 'package:flutter/material.dart';


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
            hintText: (hint),

            suffixIcon: true
                ? Icon(
              icon,
              color: Colors.grey,
            )
                : null,
          ),
        ),
      ),
    );
  }
}
