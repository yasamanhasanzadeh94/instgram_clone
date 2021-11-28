import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/dimens.dart';

Widget phoneTextField(BuildContext context, String hint, {IconData? iconData,Color? color}) {
  return Container(margin: EdgeInsets.symmetric(horizontal: mediumSize(context)),
    child: Row(
      children: [
        Container(
            margin:EdgeInsets.symmetric(horizontal: mediumSize(context)),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              border: Border.all(width: 1,color: Colors.grey.shade100)
            ),
            child: Row(
                children:[
                  Container(
            margin:EdgeInsets.symmetric(horizontal: mediumSize(context)),child: Text("US +1",style: TextStyle(color: Colors.blue),)),
        Container(width: 0.5,height: fullHeight(context),
          color: Colors.grey,margin: EdgeInsets.symmetric(vertical: smallSize(context)),
          child: Expanded(child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: mediumSize(context)),
              hintText: hint,
              hintStyle: Theme.of(context).textTheme.bodyText2,
              border: InputBorder.none,
            ),
          )),
        )
      ],
    ),

  )]));
}
Widget customTextField(BuildContext,String hint,{IconData? iconData, Color? color}){
  return TextField(
    decoration: InputDecoration(hintText: hint,
    suffixIcon:iconData == null ? SizedBox(): Icon(Icons.remove_red_eye,color: Colors.grey,),
    fillColor:  color == null ? Colors.grey.shade100 : color, ),

  );

}
