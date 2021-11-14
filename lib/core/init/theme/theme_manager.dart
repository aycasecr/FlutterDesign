import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  final ThemeData appTheme = ThemeData(
    brightness: Brightness.light,
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.purple),
    fontFamily: GoogleFonts.lato().fontFamily,
    // checkboxTheme: ,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 70, fontWeight: FontWeight.w300),
      subtitle1: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      headline4: TextStyle(fontSize: 36, color: Color.fromRGBO(27, 29, 33, 1)),
      headline6: TextStyle(fontSize: 13, color: Color.fromRGBO(253, 107, 53, 1), fontWeight: FontWeight.bold),
      caption: TextStyle(fontSize: 13, color: Color.fromRGBO(143, 146, 161, 1), fontWeight: FontWeight.bold),
    ),

    colorScheme: ColorScheme.light().copyWith(
      primary: Color.fromRGBO(4, 4, 21, 1),
      primaryVariant: Colors.white,
      secondary: Colors.grey,
      secondaryVariant: Colors.black,
      surface: Color.fromRGBO(243, 246, 248, 1),
      onSurface: Color.fromRGBO(253, 107, 34, 1),
    ),
    dividerTheme: DividerThemeData(thickness: 3, color: Colors.amber),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: Colors.white),
    ),
  );
}
