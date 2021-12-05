
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled6/pages/forgot_password.dart';
import 'package:untitled6/pages/signup_page.dart';
import 'package:untitled6/styles/colors.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Color btnColor = buttonColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body:
      SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: xxlargeSize(context) * 3,
            right: largeSize(context),
            left: largeSize(context),
          ),
          width: fullWidth(context),
          height: fullHeight(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: xlargeSize(context)),
                  child: Text(
                    "Instagram",
                    style: TextStyle(fontFamily: "Billabong", fontSize: 50),
                  )),
              Container(
                width: fullWidth(context),
                child:
                    customTextField(context, "Phone number, username or email"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: mediumSize(context)),
                width: fullWidth(context),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: mediumSize(context),
                    ),
                    hintText: "Password",
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.shade300, style: BorderStyle.solid),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.shade300, style: BorderStyle.solid),
                    ),
                  ),
                ),
              ),
              GestureDetector(onTap:() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()));
                child:
                Container(
                  width: fullWidth(context),
                  height: 20,
                  margin: EdgeInsets.only(top: xxSmallSize(context)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Text(
                          "Forgot password?",
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
                );

                Container(
                    width: fullWidth(context),
                    margin: EdgeInsets.only(
                        top: largeSize(context), bottom: largeSize(context)),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (btnColor == buttonColor) {
                            btnColor = Colors.red;
                          } else {
                            btnColor = buttonColor;
                          }
                        });
                      },
                      child: Text("Log In"),
                      style: ElevatedButton.styleFrom(primary: btnColor),
                    ));
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
                );
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
                );
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
                );
                Container(
                  margin: EdgeInsets.only(
                      top: smallSize(context), bottom: smallSize(context)),
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ));
                      },
                      child: Text(
                        "Sign Up.",
                        style: TextStyle(
                            color: buttonColor, fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                );
              })
         ] ),
        ),
      ),
    );
  }
}
