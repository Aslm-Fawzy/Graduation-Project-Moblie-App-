import 'package:flutter/material.dart';
import 'package:DOCTORK/registration.dart';
import 'components/my_textfield.dart';
import 'components/square_tile.dart';
import 'forgetpassword.dart';
import 'checkup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'اهلا بك',
                        // textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff00AABC),
                          fontSize: 40,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Hacen pro',
                        ),
                      ),
                      Text(
                        //textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        'منصات السوشال ميديا املأ البيانات الخاصة بك او تابع عن طريق منصات السوشال ميديا',
                        style: TextStyle(
                          color: Color(0xff2C3D68),
                          fontSize: 25,
                          fontFamily: 'Hacen',
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // username textfield
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

                // password textfield

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

                // forgot password?
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const forgetpassword()));
                            },
                            child: const Text(
                              'نسيت كلمة السر ؟',
                              style: TextStyle(
                                color: Color(0xff00AABC),
                                fontFamily: 'Hacen',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                InkWell(
                  onTap: () {
    Navigator.pushReplacement(
    context,
    MaterialPageRoute(
    builder: (context) => const checkup()));},
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
                        "تسجيل الدخول",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Hacen',
                        ),
                      ),
                    ),
                  )
                ),

                const SizedBox(height: 50),

                // or continue with
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
                        child:
                            Divider(thickness: 0.5, color: Color(0xff00AABC)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // google + apple sign in buttons
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

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const registration()));
                      },
                      child: const Text(
                        'اشترك الان',
                        style: TextStyle(
                          color: Color(0xff2C3D68),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'Hacen-Algeria-Bd',
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'مستخدم جديد ؟',
                      style: TextStyle(
                        color: Color(0xff00AABC),
                        fontFamily: 'Hacen-Algeria-Bd',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
