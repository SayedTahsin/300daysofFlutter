import 'package:flutter/material.dart';
import 'package:fullter_tutorial/home_page.dart';
import 'home_page.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
