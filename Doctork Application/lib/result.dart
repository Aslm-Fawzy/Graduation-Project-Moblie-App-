import 'package:DOCTORK/LoginPage.dart';
import 'package:DOCTORK/checkup.dart';
import 'package:flutter/material.dart';
import 'package:DOCTORK/pdf.dart';
import 'package:DOCTORK/info.dart';

class result extends StatefulWidget {
  const result({Key? key}) : super(key: key);

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/back4.jpeg"),
            fit: BoxFit.cover,
          )),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                      Icons.arrow_forward_outlined,
                      color: Color(0xff2C3D68),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => checkup()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 400,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffEAF5F6).withOpacity(0.8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'التشخيص الخاص بك',
                    style: TextStyle(
                      color: Color(0xff00AABC),
                      fontSize: 35,
                      fontFamily: 'Hacen',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'اشتباه مرض السكر',
                    style: TextStyle(
                      color: Color(0xff2C3D68),
                      fontSize: 35,
                      fontFamily: 'Hacen',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'نتمني لكم السلامة',
                    style: TextStyle(
                      color: Color(0xff00AABC),
                      fontSize: 25,
                      fontFamily: 'Hacen',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const info()));
                          },
                          child: const Text(
                            'معلومات اكثر عن المرض ؟',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
