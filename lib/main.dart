import 'package:flutter/material.dart';
import 'package:leat_eat/screens/login_screen.dart';
import 'package:leat_eat/screens/register_screen.dart';
import 'package:leat_eat/screens/walkthrough_screen.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalkthoushScreen(),
      routes: {
        login: (context) => LoginScreen(),
        registration: (context) => RegistrationScreen(),
      },
    );
  }
}
