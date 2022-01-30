import 'package:flutter/material.dart';
import 'package:untitled6/models/models/category.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,backgroundColor: Colors.white,
          title: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
          actions: [
            Container(margin: EdgeInsets.only(right: standardSize(context)),child: Image.asset("assets/shopping-cart.png",height: 20,width: 23,))
          ],
        ),
      body:
      Container(color: Colors.white,
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
              child: Image.asset("assets/emilia.png",height: 100,width: 100,)
            ),
              SizedBox(height: largeSize(context),),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
Image.asset("assets/edit.png",height: 10,width: 10,),
                  SizedBox(width: smallSize(context),),
                  Text("Edit Profile",style: TextStyle(color: Colors.deepOrange,),textAlign: TextAlign.center,)
                ],),
              ),
              SizedBox(height: standardSize(context),),
              Container(margin: EdgeInsets.symmetric(horizontal: xxlargeSize(context)),child: Text("Hi there Emilia!",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
              Container(margin: EdgeInsets.symmetric(horizontal: xxlargeSize(context)),child: Text("Sign Out",style: TextStyle(color: Colors.grey.shade700),textAlign: TextAlign.center,)),
              SizedBox(height: mediumSize(context),),
              ProfileTextField(context, "Name"),
              SizedBox(height: standardSize(context),),
              ProfileTextField(context, "Email"),
              SizedBox(height: standardSize(context),),
              ProfileTextField(context, "Mobile No"),
              SizedBox(height: standardSize(context),),
              ProfileTextField(context, "Address"),
              SizedBox(height: standardSize(context),),
              ProfileTextField(context, "PassWord"),
              SizedBox(height: standardSize(context),),
              ProfileTextField(context, "Confirm Password"),
              SizedBox(height: standardSize(context),),
              Container(margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
                child: SizedBox(width: fullWidth(context),
                  child: ElevatedButton(onPressed: () {}, child: Text("Save") ,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                      primary: Colors.deepOrange,),
              ),
                )




              ) ],
          ),
        ),
      ),
    );
  }
}






Widget Profile(BuildContext context,Model profile){
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: smallSize(context),vertical: xxSmallSize(context)),
        height: fullHeight(context)/10,
        width: fullHeight(context)/10,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(profile.image),fit: BoxFit.cover),
            shape: BoxShape.circle,),
      ),
      SizedBox(height: mediumSize(context),),
      Container(margin: EdgeInsets.only(top: xxSmallSize(context)),child: Text(profile.name,style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),))
    ],
  );

}
