import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/colors.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Container(
        width: fullWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Create Username",
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
                margin: EdgeInsets.symmetric(
                    horizontal: xlargeSize(context),
                    vertical: standardSize(context)),
                child: Text(
                  "Pick a username for your new account. You can\nalways change it later.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.grey.shade600),
                )),
            Container(
                margin: EdgeInsets.symmetric(
                    horizontal: xxlargeSize(context),
                    vertical: standardSize(context)),
                child: customTextField(context, "Username",)),
            Container(
              width: fullWidth(context),
                margin: EdgeInsets.symmetric(
                    horizontal: xxlargeSize(context),
                    vertical: standardSize(context)),

                child: ElevatedButton(onPressed:() {}, child:Text("Next") ))
          ],
        ),
      ),
    );
  }
}
