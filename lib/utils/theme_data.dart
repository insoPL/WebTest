import 'package:flutter/material.dart';

var lightThemeData = ThemeData(
  primarySwatch: Colors.grey,
  backgroundColor: Colors.white,
  cardColor: Colors.white,
  primaryTextTheme: TextTheme(
    button: TextStyle(
      color: Colors.black,
      decorationColor: Colors.grey[300],
    ),
    subtitle2: const TextStyle(color: Color.fromRGBO(54,89,47, 1)),
    subtitle1: const TextStyle(
      color: Colors.black,
    ),
    headline1: const TextStyle(color: Colors.black),
  ),
  bottomAppBarColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.black),
  brightness: Brightness.light,
);

var darkThemeData = ThemeData(
  primarySwatch: Colors.grey,
  backgroundColor: Colors.grey[900],
  cardColor: Colors.black,
  primaryTextTheme: TextTheme(
    button: TextStyle(
      color: Colors.grey[200],
      decorationColor: Colors.grey[50],
    ),
    subtitle2: const TextStyle(color: Color.fromRGBO(54,89,47, 1)),
    subtitle1: TextStyle( color: Colors.grey[200]),
    headline1: const TextStyle(color: Colors.white),

  ),
  bottomAppBarColor: Colors.black,
  iconTheme: const IconThemeData(color: Colors.white),
  brightness: Brightness.dark,
);
