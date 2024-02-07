import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      this.controller,
      required this.hintText,
      required this.obscureText});

  final controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
          controller: controller,
          obscureText: obscureText,
          cursorWidth: 1,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            fillColor: Colors.grey,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white38),
          )),
    );
  }
}
