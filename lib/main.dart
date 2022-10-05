// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fullter_tutorial/pages/cart_page.dart';
import 'package:fullter_tutorial/pages/home_page.dart';
import 'package:fullter_tutorial/pages/login_page.dart';
import 'package:fullter_tutorial/utils/routes.dart';
import 'package:fullter_tutorial/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
