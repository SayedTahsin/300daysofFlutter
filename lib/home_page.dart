import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  final  int days = 30;
  final String name = "Tahsin";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text("Welcome $days flutter course by $name"),
        ),
      ),
    );
  }
}
