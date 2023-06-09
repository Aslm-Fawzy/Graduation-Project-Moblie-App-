import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'checkup.dart';
import 'components/my_textfield.dart';
import 'components/square_tile.dart';

enum Gender { male, female }

// ignore: camel_case_types
class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordproController = TextEditingController();

  

  void signUserUp() {}

  Gender? _gender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffEAF5F6),
          leading: Image.asset(
            'assets/app export 2-19.png',
          ),
        ),
        backgroundColor: Color(0xffEAF5F6),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'اهلا بك',
                            textAlign: TextAlign.right,
                            //textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Color(0xff00AABC),
                              fontSize: 45,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Hacen pro',
                            ),
                          ),
                          Text(
                            "املأ البيانات الخاصة بك او تابع عن طريق منصات السوشيل ميديا",
                            textAlign: TextAlign.right,
                            //textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 23,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    MyTextField(
                      controller: nameController,
                      hintText: 'الاسم',
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      prefix: Icon(
                        Icons.person_outline_rounded,
                        color: Color(0xff00AABC),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: ageController,
                      hintText: 'السن',
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      prefix: const Icon(
                        Icons.person_outline_rounded,
                        color: Color(0xff00AABC),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        RadioListTile(
                          title: const Text(
                            'ذكر',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xff00AABC),
                              fontSize: 20,
                              fontFamily: 'Hacen ',
                            ),
                          ),
                          activeColor: Color(0xff00AABC),
                          value: Gender.male,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                        RadioListTile(
                          title: const Text(
                            'انثي',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xff00AABC),
                              fontSize: 20,
                              fontFamily: 'Hacen ',
                            ),
                          ),
                          activeColor: Color(0xff00AABC),
                          value: Gender.female,
                          groupValue: _gender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _gender = value;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: usernameController,
                      hintText: 'البريد الالكتروني',
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      prefix: const Icon(
                        Icons.email_outlined,
                        color: Color(0xff00AABC),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: passwordController,
                      hintText: 'كلمة السر',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      prefix: const Icon(
                        Icons.lock_outline,
                        color: Color(0xff00AABC),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MyTextField(
                      controller: passwordproController,
                      hintText: 'تاكيد كلمة السر',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      prefix: const Icon(
                        Icons.lock_outline,
                        color: Color(0xff00AABC),
                      ),
                    ),
                    const SizedBox(height: 25),
                    InkWell(
                      onTap:() {
                       Navigator.pushReplacement(
                        context,
                          MaterialPageRoute(
                            builder: (context) => const checkup()));},
                      child: Container(
                        height: 70,
                        width: 600,
                        padding: const EdgeInsets.all(25),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xff2C3D68),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            "اشتراك",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      )
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Color(0xff00AABC),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'او اكمل عن طريق',
                              style: TextStyle(
                                color: Color(0xff00AABC),
                                fontFamily: 'Hacen',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                                thickness: 0.5, color: Color(0xff00AABC)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // google button
                        SquareTile(imagePath: 'assets/google.png'),

                        SizedBox(width: 5),

                        // apple button
                        SquareTile(imagePath: 'assets/face.png')
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text(
                            'سجل دخول',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontSize: 15,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          'مستخدم جديد ؟',
                          style: TextStyle(
                            color: Color(0xff00AABC),
                            fontFamily: 'Hacen',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
