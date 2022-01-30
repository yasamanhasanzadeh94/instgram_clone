import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/pages/home_page.dart';
import 'package:untitled6/pages/profile_page.dart';
import 'package:untitled6/styles/dimens.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(currentIndex: index,iconSize: 12,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        unselectedItemColor: Colors.grey,selectedItemColor:Colors.deepOrange,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/menu.png",width: 30,height: 32,),label: "Menu"),
          BottomNavigationBarItem(icon: Image.asset("assets/offer.png",width: 30,height: 32,),label: "Offers"),
          BottomNavigationBarItem(icon: Image.asset("assets/home-button.png",width: 30,height: 32,),label: ""),
          BottomNavigationBarItem(icon: Image.asset("assets/user.png",width: 30,height: 32,),label: "Profile"),
          BottomNavigationBarItem(icon: Image.asset("assets/more.png",width: 30,height: 32,),label: "More"),
        ],),

      body: body(),
    );
  }

}
Widget body(){
  var index;
  switch(index){
    case 0:return HomeMonkey();
    case 1: return HomeMonkey();
    case 2:return HomeMonkey();
    case 3: return ProfilePage();
    case 4: return HomeMonkey();
    default: return HomeMonkey();
  }
}