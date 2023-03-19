import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
//  import 'package:hexcolor/hexcolor.dart';

ThemeData darkTheme = ThemeData(
    // primarySwatch: defaultColor,
    // scaffoldBackgroundColor: HexColor('333739'),
    appBarTheme: const AppBarTheme(
      titleSpacing: 20.0,
      // backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        // statusBarColor: HexColor('333739'),
        statusBarIconBrightness: Brightness.light,
      ),
      // backgroundColor: HexColor('333739'),
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
      // backgroundColor: HexColor('333739'),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
    fontFamily: 'OpenSans');

ThemeData lightTheme = ThemeData(
    // primarySwatch: defaultColor as MaterialColor?,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleSpacing: 20.0,
      // backwardsCompatibility: false,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: defaultColor,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    fontFamily: 'OpenSans');
