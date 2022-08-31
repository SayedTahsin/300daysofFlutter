import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  int days = 30;
  String name="Tahsin";
  // double pi=3.14;
  bool isMale=true;
  num temp=30.5;
  var day="Thursday";
  static const pi=3.14; // cannot be changed
  final x=3.14; // can be changed 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Welcome $days flutter course by $name"),
          ),
        ),
      ),
    );
  }
}
