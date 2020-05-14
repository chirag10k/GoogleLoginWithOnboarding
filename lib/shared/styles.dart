import 'package:flutter/material.dart';

Color primaryColor1 = Color(0xFF004e92);
Color primaryColor2 = Color(0xFF000428);

BoxDecoration profileIconDecoration =  BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: primaryColor1,
  boxShadow: [
    BoxShadow(
        color: primaryColor1,
        blurRadius: 5.0,
        offset: Offset(2,1)
    ),
    BoxShadow(
        color: primaryColor1,
        blurRadius: 5.0,
        offset: Offset(-2,-1)
    )
  ],
);

List<LinearGradient> gradientList = [
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFFFAFBD),
      Color(0xFFFFC3A0),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF2193B0),
      Color(0xFF6DD5ED),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFCC2B5E),
      Color(0xFF753A88),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFEE9CA7),
      Color(0xFFFFDDE1),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF42275A),
      Color(0xFF734B6D),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFBDC3C7),
      Color(0xFF2C3E50),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFDE6262),
      Color(0xFFFFB88C),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFF06BEB6),
      Color(0xFF48B1BF),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFEB3349),
      Color(0xFFF45C43),
    ],
  ),
  LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0xFFDD5E89),
      Color(0xFFF7BB97),
    ],
  ),
];