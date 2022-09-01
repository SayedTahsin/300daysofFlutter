import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final  int days = 30;
  final String name = "Tahsin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Day2"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome $days flutter course by $name"),
        ),
      ),
    drawer: Drawer(),
    );
  }
  
}
