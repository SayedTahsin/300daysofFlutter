// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: MyTheme.creamColor,
      accentColor: Colors.black,

      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodySmall,
        titleTextStyle: Theme.of(context).textTheme.headline5,
      ));
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: MyTheme.DarkCreamColor,
      accentColor: Colors.white,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: Theme.of(context).textTheme.bodySmall,
        titleTextStyle: Theme.of(context).textTheme.headline5,
      ));

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color DarkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff043b58);
  static Color lightBluishColor = Vx.purple400;
}
