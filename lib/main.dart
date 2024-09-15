import 'package:flutter/material.dart';
import 'package:second_app/pages/home_page.dart';
import 'package:second_app/pages/login_page.dart';
import 'package:second_app/utils/routes.dart';
import 'package:second_app/widgets/theme.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "codepur";
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lighttheme(context),
      darkTheme: Mytheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeroutes,
      routes: {
        "/": (context) => loginPage(),
        Myroutes.homeroutes: (context) => HomePage(),
         Myroutes.loginroutes: (context) => loginPage(),
      },
    );
  }
}
