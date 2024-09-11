import 'package:flutter/material.dart';
import 'package:second_app/pages/home_page.dart';
import 'package:second_app/pages/login_page.dart';
import 'package:second_app/utils/routes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "codepur";
    return MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => loginPage(),
        Myroutes.homeroutes: (context) => HomePage(),
         Myroutes.loginroutes: (context) => loginPage(),
      },
    );
  }
}
