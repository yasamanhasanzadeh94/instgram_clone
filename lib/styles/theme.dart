import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData themeData = ThemeData(
    backgroundColor: backgroundColor,
    iconTheme: IconThemeData(color: Colors.black),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical:16 )
        )),
    buttonTheme: ButtonThemeData(
        buttonColor: buttonColor,
        padding: EdgeInsets.symmetric(horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        )),
    textTheme: TextTheme(bodyText2: TextStyle(fontFamily: "Roboto")));
