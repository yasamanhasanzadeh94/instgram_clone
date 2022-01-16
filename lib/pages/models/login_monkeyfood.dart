import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class LoginMonkey extends StatefulWidget {
  const LoginMonkey({Key? key}) : super(key: key);

  @override
  _LoginMonkeyState createState() => _LoginMonkeyState();
}

class _LoginMonkeyState extends State<LoginMonkey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
      Container(margin: EdgeInsets.symmetric(vertical: xxlargeSize(context),horizontal: xlargeSize(context)),
        child: Column(
          children: [
            Container(margin: EdgeInsets.symmetric(vertical:smallSize(context)),alignment:Alignment.center ,
                child: Text("Login",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize:30), )),
            Container(margin: EdgeInsets.only(bottom: xlargeSize(context)),child: Text("Add your details to login",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey))),
            Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Your Email",)),
            Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Password",)),
            Container(margin: EdgeInsets.only(bottom: mediumSize(context)),
                child: SizedBox(width: fullWidth(context),height: 50,child: ElevatedButton(onPressed: () {} ,child: Text("Login"),style: ElevatedButton.styleFrom(primary: Colors.deepOrange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))), )),),
            Container(margin: EdgeInsets.only(bottom: xxlargeSize(context)),child: Text("Forgot your password?",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey))),
            Text("or Login With",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey)),
            Container(margin: EdgeInsets.only(bottom: mediumSize(context),top: mediumSize(context)),
              child: SizedBox(width: fullWidth(context),height: 50,child: ElevatedButton(onPressed: () {} ,child: Text("Login with Facebook"),style: ElevatedButton.styleFrom(primary: Colors.indigo,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))), )),),
            Container(margin: EdgeInsets.only(bottom: xlargeSize(context)),
              child: SizedBox(width: fullWidth(context),height: 50,child: ElevatedButton(onPressed: () {} ,child: Text("Login with Google"),style: ElevatedButton.styleFrom(primary: Colors.red,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))), )),),
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey)),
                  GestureDetector(child:Text("Sign Up",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),onTap: () {} ,)
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
