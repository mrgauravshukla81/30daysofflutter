import 'package:flutter/material.dart';
import 'package:second_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog App"),
        backgroundColor: Color.fromARGB(255, 40, 84, 148),
      ),
      body: Center(
         child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
         ),
      ),
      drawer: MyDrawer(),
    );
  }
}
