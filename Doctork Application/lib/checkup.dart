import 'package:DOCTORK/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:DOCTORK/list.dart';

class checkup extends StatefulWidget {
  const checkup({Key? key}) : super(key: key);

  @override
  State<checkup> createState() => _checkupState();
}

class _checkupState extends State<checkup> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/back1.jpeg"),
            fit: BoxFit.cover,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/app export 2-19.png",
                      fit: BoxFit.cover,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.logout,
                        color: Color(0xff2C3D68),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => list()));
                  },
                  child: Container(
                      // width: 300,
                      // height: 600,
                      child:
                          // Image.asset("assets/app export 2-15.png",
                          // fit: BoxFit.cover,
                          // ),
                          Transform.scale(
                    scale: 1.5,
                    child: Image(
                      image: AssetImage('assets/app export 2-15.png'),
                      width: 600,
                      height: 400,
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
