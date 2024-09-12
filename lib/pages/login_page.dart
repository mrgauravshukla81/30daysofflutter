import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_app/utils/routes.dart';

class loginPage extends StatefulWidget {
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changebutton = false;
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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "password"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, Myroutes.homeroutes);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton ? 80 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 50 : 8)),
                    ),
                  ),
                  // ElevatedButton(
                  //   style: ButtonStyle(
                  //     backgroundColor: MaterialStatePropertyAll<Color>(
                  //         Color.fromARGB(255, 36, 148, 239)),
                  //     minimumSize: MaterialStatePropertyAll(Size(140, 40)),
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, Myroutes.homeroutes);
                  //   },
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(color: Colors.black87),
                  //   ),
                  // ),
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
