// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue),
                    onPressed: () {
                      // ignore: avoid_print
                      print("Hello piter");
                    },
                    child: Text("Login"),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
