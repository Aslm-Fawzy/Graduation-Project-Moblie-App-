import 'package:DOCTORK/result.dart';

import 'components/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:DOCTORK/pdf.dart';


class hand extends StatefulWidget {
  const hand({Key? key}) : super(key: key);

  @override
  State<hand> createState() => _handState();
}

class _handState extends State<hand> {

  final nameController1 = TextEditingController();
  final nameController2 = TextEditingController();
  final nameController3 = TextEditingController();
  final nameController4 = TextEditingController();
  final nameController5 = TextEditingController();
  final nameController6 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffe7fafc),
          body: SingleChildScrollView(
            child: Column(
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
                      color: Color(0xff2C3D68),),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => pdf()));},
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text('املا بيانات التحليل',
                    style: TextStyle(
                      color: Color(0xff00AABC),
                      decoration: TextDecoration.underline,
                      fontSize: 30,
                      fontWeight: FontWeight.w200,
                      fontFamily: 'Hacen pro',
                    ),
                    )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: MyTextField(
                              controller: nameController1,
                              hintText: '',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              prefix: const Icon(Icons.add_chart_sharp,
                                color: Color(0xff00AABC),
                              ),
                            ),
                          ),
                          Text('نسبه الهيموجلوبين',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: MyTextField(
                              controller: nameController2,
                              hintText: '',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              prefix: const Icon(Icons.add_chart_sharp,
                                color: Color(0xff00AABC),
                              ),
                            ),
                          ),
                          Text('نسبه الهيموجلوبين',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: MyTextField(
                              controller: nameController3,
                              hintText: '',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              prefix: const Icon(Icons.add_chart_sharp,
                                color: Color(0xff00AABC),
                              ),
                            ),
                          ),
                          Text('نسبه الهيموجلوبين',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: MyTextField(
                              controller: nameController4,
                              hintText: '',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              prefix: const Icon(Icons.add_chart_sharp,
                                color: Color(0xff00AABC),
                              ),
                            ),
                          ),
                          Text('نسبه الهيموجلوبين',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: MyTextField(
                              controller: nameController5,
                              hintText: '',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              prefix: const Icon(Icons.add_chart_sharp,
                                color: Color(0xff00AABC),
                              ),
                            ),
                          ),
                          Text('نسبه الهيموجلوبين',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: MyTextField(
                              controller: nameController6,
                              hintText: '',
                              keyboardType: TextInputType.number,
                              obscureText: false,
                              prefix: const Icon(Icons.add_chart_sharp,
                                color: Color(0xff00AABC),
                              ),
                            ),
                          ),
                          Text('نسبه الهيموجلوبين',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const result()));
                  },
                  child: Container(
                    width: 114,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff2C3D68),
                    ),
                    child: const Center(
                      child: Text(
                        'التالي',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Hacen',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    )
    );
  }
}
