import 'package:flutter/material.dart';
import 'package:fullter_tutorial/pages/home_page.dart';
import 'package:fullter_tutorial/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      routes: {
        "/": (context) => Homepage(),
        "/login": (context) => loginPage(),
      },
    );
  }
}
