import 'package:flutter/material.dart';
import 'package:DOCTORK/image.dart';
import 'package:DOCTORK/checkup.dart';


class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);
  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  final List<String> _checkboxItems = [
    'فقدان الوزن',
    'الشعور الدائم ب العطش',
    'التعب او الهمدان \nاو الخمول او الأرهاق',
    'كثرة التبول ',
    'تنميل في الاطراف',
    'زيادة الشهية',
    'تشويش او اضطراب في الرؤية',
    'غمقان لون البول',
    'الحكة ( الهرش) ',
    'فتحان لون البراز',
    'اصفرار لون الجلد ',
    'اصفرار في العين  ',
    'تورم في الرجل\n (القدم - صوابع القدم)',
    'وجع في المفاصل\n ( الركبة - الكعب - صوابع القدم)',
    'وجع في المفاصل عامة',
    'مغص كلوي\n (حصوات في مجرى البول)',
    'حبس في البول (رجال فقط)',
    'دم في البول (رجال فقط)',
    'صعوبة التبول (رجال فقط) ',
    'ضعف جنسي (رجال فقط)',
    'تورم في المفاصل عامة',
    'خشونة في المفاصل عامة',
    'الامساك',
    'الغيثان او القيء',
    'فقدان الشهية',
    'ضربات قلب غير منتظمة',
    'ألم او تشنجات في العضلات',
    'تساقط الشعر',
    'جلد او وجه شاحب',
    'ضيق في التنفس',
    'دوخة او دوار موضعي',
    'برود في اليدين او القدمين',
    'فقر الدم (انيميا)',
    'نزيف الدم ( انف - لثة)',
    'صعوبات في النوم',
    'التقلبات المزاجية (الاكتئاب)',
    'زيادة الحساسية  للحرارة',
    'الاسهال',
    'زيادة الوزن',
    'انتفاخ الوجه و العينين',
    'زيادة الحساسية للبرد',
    'بحة في الصوت',
  ];
  List<String> _symptomscheckedItems = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffe7fafc),
        body: SingleChildScrollView(
          child: Center(
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
                              color: Color(0xff2C3D68)),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => checkup()));},
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "حد الاعراض اتي تشعر بيها",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff00AABC),
                      fontFamily: 'Hacen',
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffEAF5F6),
                    ),
                    height: 500,
                    width: 500,
                    child: Scrollbar(
                      isAlwaysShown: true,
                      showTrackOnHover: true,
                      thickness: 10,
                      radius: Radius.circular(20),
                      child: ListView.builder(
                        itemCount: _checkboxItems.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CheckboxListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  _checkboxItems[index],
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xff2C3D68),
                                    fontSize: 25,
                                    fontFamily: 'Hacen',
                                  ),
                                ),
                              ],
                            ),
                            checkColor: Color(0xff2C3D68),
                            activeColor: Color(0xff00AABC),
                            checkboxShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            value: _symptomscheckedItems.contains(_checkboxItems[index]),
                            onChanged: (bool? value) {
                              setState(() {
                                if (value!) {
                                  _symptomscheckedItems.add(_checkboxItems[index]);
                                } else {
                                  _symptomscheckedItems.remove(_checkboxItems[index]);
                                }
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  InkWell(

                    onTap: () {
                      print(_symptomscheckedItems);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const image()));
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
        ),
      ),
    );
  }
}
