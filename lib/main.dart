import 'package:flutter/material.dart';
import 'package:untitled6/pages/home_page.dart';
import 'package:untitled6/pages/login_page.dart';
import 'package:untitled6/pages/main_page.dart';
import 'package:untitled6/pages/profile_page.dart';
import 'package:untitled6/styles/theme.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MyAppState();

 }

class MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
     title: "Restaurant",
   theme: themeData,
   home:ProfilePage(),

 );
  }
}


