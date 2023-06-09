import 'package:DOCTORK/LoginPage.dart';
import 'package:DOCTORK/hand.dart';
import 'package:DOCTORK/image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:DOCTORK/result.dart';
//import 'package:camera/camera.dart';

class pdf extends StatefulWidget {
  const pdf({Key? key}) : super(key: key);

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/back3.jpeg"),
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
                         Image.asset("assets/app export 2-19.png",
                           fit: BoxFit.cover,
                         ),
                         IconButton(
                           icon: const Icon(Icons.arrow_forward_outlined,
                               color: Color(0xff2C3D68)),
                           onPressed: () {
                             Navigator.pushReplacement(context,
                                 MaterialPageRoute(builder: (context) => image()));},
                         ),
                       ],
                     ),
                   ),
                  SizedBox(
                    height: 250,
                  ),
                   Center(
                     child: Text('صيغة ملف التحميل الخاص يدبك',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2C3D68),
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Hacen pro',
                      ),
                      ),
                   ),

                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => result()));
                      },
                      child: Container(
                        width: 20,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff2C3D68),
                        ),
                        child: const Center(
                          child: Text(
                            'صورة',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => result()));
                      },
                      child: Container(
                        width: 20,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff2C3D68),
                        ),
                        child: const Center(
                          child: Text(
                            'pdf',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 110.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => hand()));
                      },
                      child: Container(
                        width: 20,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xff2C3D68),
                        ),
                        child: const Center(
                          child: Text(
                            'يدوي',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ),
        ),
    );
  }
}
