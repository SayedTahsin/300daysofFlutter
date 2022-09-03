import 'package:flutter/material.dart';
import 'package:fullter_tutorial/pages/home_page.dart';
import 'package:fullter_tutorial/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
