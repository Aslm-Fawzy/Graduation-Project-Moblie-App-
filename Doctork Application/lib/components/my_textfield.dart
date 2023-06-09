import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final keyboardType;
  final String hintText;
  final bool obscureText;
  final Widget? prefix;
  const MyTextField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.obscureText,
    required this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        onSubmitted: (value){
          print(value);
        },
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            borderSide: BorderSide(
              color: Color(0xff00AABC),
            ),
          ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide(color: Color(0xff00AABC),),
        ),
            prefixIcon: prefix,
            fillColor: Color(0xffEAF5F6),
            filled: true,
            hintText: hintText,
            hintTextDirection: TextDirection.rtl,
            hintStyle:
            TextStyle(color: Color(0xff00AABC).withOpacity(0.4),
            fontSize: 20,
              fontFamily: 'Hacen',
            )
        ),
      ),
    );
  }
}