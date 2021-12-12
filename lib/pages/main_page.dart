import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/pages/forgot_password.dart';
import 'package:untitled6/pages/home_page.dart';
import 'package:untitled6/pages/login_page.dart';
import 'package:untitled6/pages/signup_page.dart';
import 'package:untitled6/pages/tab_example.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.shade700,
      showSelectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.recommend),label: "like"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile"),
      ],),
      body: body(),
    );
  }
  Widget body(){
    switch(index){
      case 0 : return HomePage();
      case 1 : return LoginPage();
      case 0 : return SignUpPage();
      case 0 : return ForgotPassword();
      case 0 : return TabExample();
      default:
        return HomePage();

    }
  }
}
