import 'package:DOCTORK/LoginPage.dart';
import 'package:DOCTORK/checkup.dart';
import 'package:DOCTORK/result.dart';
import 'package:flutter/material.dart';

class info extends StatefulWidget {
  const info({Key? key}) : super(key: key);

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
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
                            MaterialPageRoute(builder: (context) => result()));},
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
                child: SingleChildScrollView(
                  child: Scrollbar(
                    isAlwaysShown: true,
                    showTrackOnHover: true,
                    thickness: 10,
                    radius: Radius.circular(20),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                        child: Column(
                          // crossAxisAlignment:CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "مرض السكري ، المعروف أيضًا باسم داء السكري ، هو مجموعة من أمراض الغدد الصماء الشائعة التي تتميز بارتفاع مستمر في مستويات السكر في الدم. يرجع مرض السكري إما إلى أن البنكرياس لا ينتج كمية كافية من الأنسولين ، أو أن خلايا الجسم لا تستجيب بشكل صحيح للأنسولين المنتج. يؤدي مرض السكري ، إذا ترك دون علاج ، إلى العديد من المضاعفات الصحية",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xff00AABC),
                                fontSize: 25,
                                fontFamily: 'Hacen',
                              ),
                            ),
                          ],
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
