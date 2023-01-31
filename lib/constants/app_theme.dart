import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static const Color scaffoldColor = Color(0xFF161616);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF161616);
  static const Color darkGrey = Color(0xFF262626);
  static const Color darkGreyCard = Color(0xFF1D1D1D);
  static const Color subHeadingColor1 = Color(0xFF848484);
  static const Color subHeadingColor2 = Color(0xFF7F7F7F);
  static const Color yellow = Color(0xFFE8FB7A);
  static const Color darkYellow = Color(0xFF2B2D20);
  static const Color red = Color(0xFFFD044F);

  static TextStyle headline1 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: white,
  );

  static TextStyle headline2 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: white,
  );

  static TextStyle subHeading1 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: subHeadingColor1,
  );

  static TextStyle subHeading2 = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: subHeadingColor2,
  );
}
