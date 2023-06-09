// import 'package:DOCTORK/LoginPage.dart';
// import 'package:DOCTORK/checkup.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class Auth extends StatefulWidget {
//   const Auth({Key? key}) : super(key: key);
//
//   @override
//   State<Auth> createState() => _AuthState();
// }
//
// class _AuthState extends State<Auth> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: ((context, snapshot) {
//           if (snapshot.hasData) {
//             return checkup();
//           } else {
//             return LoginPage();
//           }
//         }),
//       ),
//     );
//   }
// }
