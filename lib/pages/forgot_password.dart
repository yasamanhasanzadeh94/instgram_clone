import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/colors.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class ForgotPassword extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => ForgotPasswordState();


}

class ForgotPasswordState extends State<ForgotPassword>{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    resizeToAvoidBottomInset: true,
     body: SingleChildScrollView(
       child: Container(
        margin: EdgeInsets.only(
         top: smallSize(context) * 5,
         right: largeSize(context),
         left: largeSize(context),
        ),
        width: fullWidth(context),
        height: fullHeight(context),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Container(
               child: Image.network("https://icon-library.com/images/forgot-password-icon/forgot-password-icon-22.jpg"),width:100,height: 100,),
           Container(
            margin: EdgeInsets.only(bottom: smallSize(context)),
             child: Text(
              "Trouble logging in?",
              style: Theme.of(context).textTheme.headline6,
             ),
           ),
           Container(
               margin: EdgeInsets.symmetric(
                   horizontal: xlargeSize(context),
                   vertical: standardSize(context)),
               child: Text(
                "Enter your username or email and we'll \n send you a link to get back into your \n account",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.grey.shade900),
               )),
           Container(margin: EdgeInsets.symmetric(vertical: xSmallSize(context),horizontal: smallSize(context)),
             child: Row(
              children: [
               Column(children: [Text("Username")],),
               Column(children: [Text("Phone")],),
              ],
             ),
           ),
           Container(
            width: fullWidth(context),
            child:
            customTextField(context, "Username or email"),
           ),
             Container(
                 width: fullWidth(context),
                 margin: EdgeInsets.only(
                     top: largeSize(context), bottom: largeSize(context)),

                 child: ElevatedButton(onPressed:() {}, child:Text("Next") )),
    Container(
    width: fullWidth(context),
    height: 20,
    margin: EdgeInsets.only(top: xxSmallSize(context)),
    child: Stack(
    children: [
    Positioned(
    right: 130,
    top: 0,
    bottom: 0,
    child: Text(
    "Need more help?",
    style: Theme
            .of(context)
            .textTheme
            .bodyText2!
            .copyWith(
    color: buttonColor,
    fontWeight: FontWeight.bold,
    fontSize: 14),
    ),
    )
    ],
    ),
    ),
    SizedBox(height: smallSize(context),),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Expanded(
    flex: 2,
    child: Divider(
    color: Colors.grey,
    )),
    Expanded(
    flex: 1,
    child: Text(
    "OR",
    textAlign: TextAlign.center,
    style: TextStyle(
    fontWeight: FontWeight.bold, color: Colors.black26),
    ),
    ),
    Expanded(
    flex: 2,
    child: Divider(
    color: Colors.grey,
    ))
    ],
    ),
   InkWell(
   onTap: () {},
   splashColor: Colors.transparent,
   focusColor: Colors.transparent,
   highlightColor: Colors.transparent,
   onFocusChange: (value) {
   print(value);
   },
   child: Container(
   margin: EdgeInsets.symmetric(
   vertical: xxlargeSize(context)),
   child: Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
   Container(
   width: 16,
   height: 20,
   child: Image.network(
   "https://png.pngitem.com/pimgs/s/509-5094186_free-png-psd-peoplepng-whatsapp-instagram-and-facebook.png")),
   Container(
   margin: EdgeInsets.only(left: 10),
   child: Text(
   "Log In With Facebook",
   style: TextStyle(
   fontSize: 15,
   color: buttonColor,
   fontWeight: FontWeight.bold),
   )),
   ],
   ),
   ),
   ),
   Container(
   margin: EdgeInsets.only(bottom: xxSmallSize(context)),
   child: Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
   Expanded(
   flex: 1,
   child: Divider(
   color: Colors.grey,
   )),
   ],
   ),
   ),
   Container(
   margin: EdgeInsets.only(
   top: smallSize(context), bottom: smallSize(context)),
   child:
   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
   GestureDetector(
   child: Text(
   "Back To Log In",
   style: TextStyle(
   color: buttonColor, fontWeight: FontWeight.bold),
   ),
   )
   ]),
   ),
           ],



         ),
       ),
     ),
   );
  }
}