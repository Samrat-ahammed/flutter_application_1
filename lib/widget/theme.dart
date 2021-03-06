import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

// Colors
  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkblueishcolor = Color(0xff403b58);
}
