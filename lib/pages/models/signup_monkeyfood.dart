import 'package:flutter/material.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class SignUpMonkey extends StatefulWidget {
  const SignUpMonkey({Key? key}) : super(key: key);

  @override
  _SignUpMonkeyState createState() => _SignUpMonkeyState();
}

class _SignUpMonkeyState extends State<SignUpMonkey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(margin: EdgeInsets.symmetric(vertical: xlargeSize(context),horizontal: xlargeSize(context)),
        child: Column(
children: [
  Container(margin: EdgeInsets.symmetric(vertical:smallSize(context)),alignment:Alignment.center ,
      child: Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w900,fontSize:30), )),
  Container(margin: EdgeInsets.only(bottom: xlargeSize(context)),child: Text("Add your details to sign up",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey))),
  Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Name",)),
  Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Email",)),
  Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Mobile No",)),
  Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Address",)),
  Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Password",)),
  Container(margin: EdgeInsets.only(bottom: largeSize(context)),child: TextFieldMonkey(context, "Confirm Password",)),
  Container(margin: EdgeInsets.only(bottom: mediumSize(context)),
    child: SizedBox(width: fullWidth(context),height: 50,child: ElevatedButton(onPressed: () {} ,child: Text("Sign Up"),style: ElevatedButton.styleFrom(primary: Colors.deepOrange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35))), )),),
  Container(margin: EdgeInsets.only(top: xxSmallSize(context)),
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize:20,color: Colors.grey)),
        GestureDetector(child:Text("Login",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),onTap: () {} ,)
      ],
    ),
  ),
],      ),
      ),
    );
  }
}
