import 'dart:ui';
import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'components/my_textfield.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';


class forgetpassword extends StatefulWidget {

  const forgetpassword({Key? key}) : super(key: key);

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {

  final emailController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();
  // final confirmcodeController = TextEditingController();


  Widget dot() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: i == pagenumber ? 35 : 20,
              height: 6,
              decoration: BoxDecoration(
                color: i == pagenumber
                    ? const Color(0xff00AABC)
                    : const Color(0xff2C3D68),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
        ],
      );
    }));
  }

  final String requiredOtp = '1462';
  final TextEditingController otpController = TextEditingController();

  PageController nextpage = PageController();
  int pagenumber = 0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffEAF5F6),
          leading: Image.asset(
            'assets/app export 2-19.png',
          ),
        ),
        backgroundColor: Color(0xffEAF5F6),
        body:
        PageView(
          onPageChanged: (value) {
            setState(() {
              pagenumber = value;
            });
          },
          controller: nextpage,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),

                         Image.asset("assets/app export-15.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'نسيت كلمة السر',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 40 ,
                            fontWeight: FontWeight.w100,
                            color: Color(0xff2C3D68),
                            fontFamily: 'Hacen pro',
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'ادخل بريدك الالكتروني لتجديد كلمة السر الخاصة بك',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2C3D68),
                        fontFamily: 'Hacen',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    MyTextField(
                      controller: emailController,
                      hintText: 'البريد الالكتروني',
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      prefix: const Icon(Icons.email_outlined,
                        color: Color(0xff00AABC),
                      ),
                    ),

                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        nextpage.animateToPage(1,
                            duration: const Duration(microseconds: 700),
                            curve: Curves.easeIn);
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
                            "استمرار",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Hacen pro',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    dot(),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),

                    Image.asset("assets/app export-11.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'تصفح البريد الخاص بك',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 30 ,
                            fontWeight: FontWeight.w100,
                            color: Color(0xff2C3D68),
                            fontFamily: 'Hacen pro',
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'ادخل الرمز المرسل على البريد الخاص \nبك لتجديد كلمة السر الخاصة بك',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2C3D68),
                        fontFamily: 'Hacen',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Pinput(
                        controller: otpController,
                        // length: 6,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        defaultPinTheme: PinTheme(
                          width: 70.0,
                          height: 80.0,
                          textStyle: const TextStyle(
                            color: Color(0xff00AABC),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                           fontFamily: "Hacen"
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff80DEEA).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        errorPinTheme: PinTheme(
                          width: 70,
                          height: 70,
                          textStyle: const TextStyle(
                            color: Color(0xffEF5350),
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffEF9A9A).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        errorTextStyle: const TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Hacen",
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent),

                        onTap: () {
                          otpController.clear();
                        },
                        validator: (otp) {
                          if (otp == requiredOtp) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('كود التأكيد صحيح'),
                                backgroundColor: Colors.green,
                                behavior: SnackBarBehavior.floating,

                              ),
                            );
                            return null;
                          }

                          return 'كود التاكيد خطأ';
                        },
                      ),
                    ),

                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        nextpage.animateToPage(2,
                            duration: const Duration(microseconds: 700),
                            curve: Curves.easeIn);
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
                            "استمرار",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Hacen pro',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'لم تستلم الكود ؟',
                          style: TextStyle(
                            color: Color(0xff00AABC),
                            fontFamily: 'Hacen',
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {
                            nextpage.animateToPage(1,
                                duration: const Duration(microseconds: 700),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            'اعد ارسال الكود',
                            style: TextStyle(
                              color: Color(0xff2C3D68),
                              fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              decorationColor: Color(0xff2C3D68),
                              decorationThickness: 2,
                              fontSize: 18,
                              fontFamily: 'Hacen',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    dot(),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),

                    Image.asset("assets/app export-13.png"),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'تجديد كلمة السر',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 40 ,
                            fontWeight: FontWeight.w100,
                            color: Color(0xff2C3D68),
                            fontFamily: 'Hacen pro',
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'اعد ادخال كلمة السر جديدة مختلفة عن السابقة',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff2C3D68),
                        fontFamily: 'Hacen',
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    MyTextField(
                      controller: newController,
                      hintText: 'كلمة السر',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      prefix: const Icon(Icons.lock_outline,
                        color: Color(0xff00AABC),),
                    ),
                    SizedBox(height: 10,),
                    MyTextField(
                      controller: confirmController,
                      hintText: 'تأكيد كلمة السر',
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      prefix: const Icon(Icons.lock_outline,
                      color: Color(0xff00AABC),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: () {
                        print(newController);
                        print(confirmController);
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
                            "تأكيد",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Hacen pro',
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    dot(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
