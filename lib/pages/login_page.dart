import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:meta/meta.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
      child: Text(
        "Login Page",
        style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
        ),
      textScaleFactor: 2.0,
      ),
    ));
  }
}
