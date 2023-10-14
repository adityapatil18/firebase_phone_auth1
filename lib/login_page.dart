import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Llogin successful ',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
