import 'package:easy_lifts2/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/welcome.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';

import 'package:easy_lifts2/screens/login_screen.dart';
import 'package:easy_lifts2/screens/registration_screen.dart';
import 'package:easy_lifts2/screens/input_page.dart';

void main() => runApp(EasyLifts());

class EasyLifts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        InputPage.id: (context) => InputPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
