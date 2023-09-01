// // login_page.dart
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_phone_auth1/auth.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final AuthService authService = AuthService();
//   final _phoneNumberController = TextEditingController();
//   final _otpController = TextEditingController();
//   String verificationId = ''; // Initialize with an empty string

//   @override
//   void dispose() {
//     _phoneNumberController.dispose();
//     _otpController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 controller: _phoneNumberController,
//                 decoration: InputDecoration(labelText: 'Enter Phone Number'),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 final phoneNumber = _phoneNumberController.text;
//                 final result =
//                     await authService.signInWithPhoneNumber(phoneNumber);
//                 if (result['success']) {
//                   // Capture the verification ID from the result
//                   verificationId = result['message'];
//                 } else {
//                   // Handle login failure
//                 }
//               },
//               child: Text('Sign in with Phone Number'),
//             ),
//             Padding(
//               padding: EdgeInsets.all(16.0),
//               child: TextFormField(
//                 controller: _otpController,
//                 decoration: InputDecoration(labelText: 'Enter OTP'),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 final otp = _otpController.text;
//                 final User? user = await authService.verifyOTP(
//                   verificationId,
//                 );
//                 if (user != null) {
//                   Navigator.pushReplacementNamed(context, '/home');
//                 } else {
//                   // Handle OTP verification failure
//                 }
//               },
//               child: Text('Verify OTP'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
