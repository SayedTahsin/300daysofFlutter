import 'package:flutter/material.dart';
import 'package:fullter_tutorial/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Tahsin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Catalog"),
      ),
      body: Center(
        child: Text("Welcome $days flutter course by $name"),
      ),
      drawer: MyDrawer(),
    );
  }
}
