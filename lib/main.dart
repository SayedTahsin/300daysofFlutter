import 'package:flutter/material.dart';
import 'package:fullter_tutorial/pages/home_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme:
          ThemeData( primarySwatch: Colors.cyan),
    );
  }
}
