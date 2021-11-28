import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/colors.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class ForgotPassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  String headerText =
      "Enter your username or email and we'll \n send you a link to get back into your \n account";

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    tabController!.addListener(() {
      if (tabController!.index == 0) {
        setState(() {
          headerText =
              "Enter your username or email and we'll \n send you a link to get back into your \n account";
        });
      } else {
        setState(() {
          headerText =
              "Enter your phone number and we'll send \n you a login code to get back into your \n account";
        });
      }
    });
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.only(
            top: largeSize(context),
            right: largeSize(context),
            left: largeSize(context),
          ),
          width: fullWidth(context),
          height: fullHeight(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: xxlargeSize(context) + standardSize(context)),
                child: Image.network(
                    "https://icon-library.com/images/forgot-password-icon/forgot-password-icon-22.jpg"),
                width: fullWidth(context) / 4,
                height: fullHeight(context) / 4,
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: smallSize(context), top: mediumSize(context)),
                child: Text(
                  "Trouble logging in?",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: xlargeSize(context),
                      vertical: mediumSize(context)),
                  child: Text(
                    headerText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey.shade900),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: xSmallSize(context),
                      horizontal: smallSize(context)),
                  child: TabBar(
                    controller: tabController,
                    tabs: [Text("Username"), Text("Phone")],
                    labelColor: Colors.black,
                    labelPadding:
                        EdgeInsets.symmetric(vertical: smallSize(context)),
                    unselectedLabelColor: Colors.grey,
                  )),
              SizedBox(
                height: 50,
                width: fullWidth(context),
                child: TabBarView(controller: tabController, children: [
                  SizedBox(
                    width: fullWidth(context),
                    child: customTextField(context, "Username or email"),
                  ),
                  SizedBox(
                    width: fullWidth(context),
                    child: phoneTextField(context, "phoneNumber"),
                  ),
                ]),
              ),
              Container(
                  width: fullWidth(context),
                  margin: EdgeInsets.only(
                      top: largeSize(context), bottom: largeSize(context)),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Next"))),
              Container(
                width: fullWidth(context),
                height: 20,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: xxSmallSize(context)),
                child: Text(
                  "Need more help?",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: buttonColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: xxlargeSize(context),
              )),
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
                  margin:
                      EdgeInsets.symmetric(vertical: xxlargeSize(context)),
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
              Expanded(child: SizedBox()),
              Container(
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: smallSize(context), bottom: smallSize(context)),
                child: GestureDetector(
                  child: Text(
                    "Back To Log In",
                    style: TextStyle(
                        color: buttonColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
