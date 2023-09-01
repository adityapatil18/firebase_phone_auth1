// // home_page.dart
// import 'package:firebase_phone_auth1/auth.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   final AuthService authService = AuthService();
//   final String verificationId; // Accept the verification ID as a parameter

//   HomePage({required this.verificationId});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//             await authService.signOut();
//             Navigator.pushReplacementNamed(context, '/');
//           },
//           child: Text('Sign Out'),
//         ),
//       ),
//     );
//   }
// }
