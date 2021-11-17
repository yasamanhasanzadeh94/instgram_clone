import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/dimens.dart';

Widget customTextField(BuildContext context, String hint, {IconData? iconData,Color? color}) {
  return TextField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: mediumSize(context)),
      hintText: hint,
      suffixIcon: iconData == null
          ? SizedBox()
          : Icon(
              iconData,
              color: Colors.grey,
            ),
      hintStyle: Theme.of(context).textTheme.bodyText2,
      border: OutlineInputBorder(),
      filled: true,
      fillColor:color == null ? Colors.grey.shade100 : color,
      enabledBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Colors.grey.shade300, style: BorderStyle.solid),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(color: Colors.grey.shade300, style: BorderStyle.solid),
      ),
    ),
  );
}
