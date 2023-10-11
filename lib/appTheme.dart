import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appTheme {
  static bool isDark = true;

  static Color primary = const Color(0xFF5D9CEC);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primary,
      scaffoldBackgroundColor: Color(0xFFDFECDB),
      colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          onPrimary: primary,
          background: Color(0xFFDFECDB)),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primary,
        toolbarHeight: 100,
      ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyLarge: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: primary,
          ),
          bodyMedium: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
          bodySmall: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: primary, size: 32),
        unselectedIconTheme:
            IconThemeData(color: Colors.grey.shade500, size: 25),
        unselectedItemColor: Colors.grey.shade500,
      ));
}
