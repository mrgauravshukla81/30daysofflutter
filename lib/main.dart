import 'package:flutter/material.dart';
import 'package:second_app/pages/home_page.dart';
import 'package:second_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "codepur";
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => loginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => loginPage(),
      },
    );
  }
}
