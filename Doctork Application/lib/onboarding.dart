import 'package:DOCTORK/Auth1.dart';
import 'package:flutter/material.dart';

import 'Auth.dart';
import 'LoginPage.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  Widget dot() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 2; i++)
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

  PageController nextpage = PageController();
  int pagenumber = 0;
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
        body: PageView(
          onPageChanged: (value) {
            setState(() {
              pagenumber = value;
            });
          },
          controller: nextpage,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/2.png"),
                  const Text(
                    'اطمئن علي حالتك الصحية',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff00AABC),
                      fontFamily: 'Hacen pro',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'تعرف علي حالتك الصحية عن طريق \n بعض الاساله المطروحه لفحص المرض \n وتحديد نوع التحليل المناسب بعدها ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff2C3D68),
                      fontFamily: 'Hacen',
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  dot(),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      nextpage.animateToPage(1,
                          duration: const Duration(microseconds: 700),
                          curve: Curves.easeIn);
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
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/1.png"),
                  const Text(
                    'صور التحاليل الخاصة بك',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff00AABC),
                      fontFamily: 'Hacen pro',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'صور التحليل الخاص بك لمعرفة التشخيص \n المناسب لك بدون الحاجه للذهاب لطبيب \n وتوفير المال والوقت والمجهد ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff2C3D68),
                      fontFamily: 'Hacen',
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  dot(),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
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
                          'ابدأ',
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
          ],
        ),
      ),
    );
  }
}
