import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  void initState() {

    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) {
                  return const onboarding();
                }
            )
        )
    );
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash screen.png"),
                fit: BoxFit.cover,

              )
          )
      ),
    );
  }
}
