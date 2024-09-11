import 'dart:math';

import 'package:flutter/material.dart';
import 'package:second_app/utils/routes.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "password"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 36, 148, 239)),
                        minimumSize: MaterialStatePropertyAll(Size(140, 40)),
                         
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Myroutes.homeroutes);
                    },
                    child: Text("Login",style: TextStyle(color:Colors.black87),),
                  ),
              
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("forgot Password?")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
