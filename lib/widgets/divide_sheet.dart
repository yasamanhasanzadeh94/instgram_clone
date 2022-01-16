import 'package:flutter/cupertino.dart';
import 'package:untitled6/styles/dimens.dart';

Widget divideSheet(BuildContext context){
  return Container(
  margin: EdgeInsets.only(top: xSmallSize(context)),
  width: xxlargeSize(context),  height: 3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
    ),
  );
}