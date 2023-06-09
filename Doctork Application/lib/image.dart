import 'package:DOCTORK/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:DOCTORK/pdf.dart';
import 'package:DOCTORK/checkup.dart';
import 'package:DOCTORK/list.dart';



class image extends StatefulWidget {
  const image({Key? key}) : super(key: key);

  @override
  State<image> createState() => _imageState();
}

class _imageState extends State<image> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/back2.jpeg"),
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
                        icon: const Icon(Icons.arrow_forward_outlined,
                            color: Color(0xff2C3D68)),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => list()));},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => pdf()));
                  },
                  child: Container(
                    child:
                    Transform.scale(
                      scale: 1.5,
                      child: Image(
                        image: AssetImage('assets/17.png'),
                        width: 100,
                        height: 150,
                      ),
                    )
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    Text(
                      'يجب عليك القيام بتحليل',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2C3D68),
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Hacen pro',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'تحليل CBC',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff00AABC),
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Hacen pro',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'هل لديك صوره من التحليل ؟',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff2C3D68),
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Hacen pro',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => pdf()));
                      },
                      child: Container(
                        height: 70,
                        width: 600,
                        padding: const EdgeInsets.all(25),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3D68),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            "نعم",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => checkup()));
                      },
                      child: Container(
                        height: 70,
                        width: 600,
                        padding: const EdgeInsets.all(25),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3D68),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            "لا,اكتفي بالتشخيص المبدئي",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
