// import 'package:DOCTORK/LoginPage.dart';
// import 'package:DOCTORK/registration.dart';
// import 'package:DOCTORK/checkup.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class Auth1 extends StatefulWidget {
//   const Auth1({Key? key}) : super(key: key);
//
//   @override
//   State<Auth1> createState() => _Auth1State();
// }
//
// class _Auth1State extends State<Auth1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<User?>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (
//             (context, snapshot) {
//               if(snapshot.hasData){
//                 return LoginPage();
//               }else{
//                 return registration();
//               }
//             }),
//       ),
//     );
//   }
// }
