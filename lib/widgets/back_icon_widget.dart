import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget backIcon(BuildContext context) {
  return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.black,
      ));
}
