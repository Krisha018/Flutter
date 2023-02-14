import 'package:flutter/material.dart';


class MyTextField extends StatelessWidget {
  final controller;
  final String hinText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.obscureText, required this.hinText,
  }

      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hinText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),


    );
  }
}
