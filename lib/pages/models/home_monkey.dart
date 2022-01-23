import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled6/pages/models/popularfood.dart';
import 'package:untitled6/pages/models/post_food.dart';
import 'package:untitled6/pages/models/signup_monkeyfood.dart';
import 'package:untitled6/pages/models/story_food.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

import 'login_monkeyfood.dart';

class HomeMonkey extends StatefulWidget {
  const HomeMonkey({Key? key}) : super(key: key);

  @override
  _HomeMonkeyState createState() => _HomeMonkeyState();

}

class _HomeMonkeyState extends State<HomeMonkey> {
  int index = 2;
  Widget body(){
    switch(index){
      case 0:return LoginMonkey();
      case 1: return SignUpMonkey();
      case 2:return HomeMonkey();
      case 3: return SignUpMonkey();
      case 4: return SignUpMonkey();
      default: return SignUpMonkey();
    }
  }
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
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
        title: Text("Good morning Akila!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
        actions: [
          Container(margin: EdgeInsets.only(right: standardSize(context)),child: Image.asset("assets/shopping-cart.png",height: 20,width: 23,))
        ],
      ),
    body: ListView(scrollDirection: Axis.vertical,shrinkWrap: true,
       children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
        Container(margin: EdgeInsets.only(left: standardSize(context),top: mediumSize(context),),child: Text("Delivering to",style: TextStyle(color: Colors.grey),)),
         Container(margin: EdgeInsets.only(left: standardSize(context),),
          child: Row(children: [
            Text("Current Location",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
            SizedBox(width: smallSize(context),),
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_down,color: Colors.deepOrange,))
          ],),
        ),
        TextFieldMonkey(context, "Search food"),
        SizedBox(height: mediumSize(context),),
        Container(width: fullWidth(context),height: xxlargeSize(context)*4,
          child: ListView.builder(itemBuilder: (context, index) => StoryFood(context,fakeListStory()[index]),
            itemCount: fakeListStory().length,scrollDirection: Axis.horizontal,shrinkWrap: true,
          ),
        ),
        SizedBox(height: xxlargeSize(context),),
        Container(margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
          child: Row(children: [
            Text("Popular Restuarant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade700),),
            Expanded(child: SizedBox(),),
            Text("View all",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)
          ],),
        ),
        ListView.builder(itemBuilder: (context, index) => PostFoood(context, fakeListPost()[index]),
          itemCount: fakeListPost().length,scrollDirection: Axis.vertical,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),),
        SizedBox(height: largeSize(context),),
        Container(margin: EdgeInsets.only(bottom: largeSize(context),left: standardSize(context),right: standardSize(context)),
          child: Row(children: [
            Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade700),),
            Expanded(child: SizedBox(),),
            Text("View all",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)
          ],),
        ),
        SizedBox(height: mediumSize(context),),
        Container(width: fullWidth(context),height: xxlargeSize(context)*4,
          child: ListView.builder(itemBuilder: (context, index) => popular(context, fakeListpopular()[index]),
            itemCount: fakeListpopular().length,scrollDirection: Axis.horizontal,shrinkWrap: true,
          ),
        ),
        SizedBox(height: largeSize(context),),
        Container(margin: EdgeInsets.only(bottom: largeSize(context),left: standardSize(context),right: standardSize(context)),
          child: Row(children: [
            Text("Recent Items",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade700),),
            Expanded(child: SizedBox(),),
            Text("View all",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)
          ],),
        ),
        SizedBox(height: mediumSize(context),),
        Container(width: fullWidth(context),height: xxlargeSize(context)*4,
          child: ListView.builder(itemBuilder: (context, index) => StoryFood(context, fakeListStory()[index]),
            itemCount: fakeListStory().length,scrollDirection: Axis.vertical,shrinkWrap: true,
          ),



        )],),


    ],
    ) );
     



  }
}

Widget StoryFood(BuildContext context,storyFood storyFood){
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: standardSize(context),vertical: xxSmallSize(context)),
        height: 100,
        width: 100,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(storyFood.image),fit: BoxFit.cover),
        shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),

      ),
      Container(margin: EdgeInsets.only(top: xxSmallSize(context)),child: Text(storyFood.name,style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),))
    ],
  );

}

Widget PostFoood(BuildContext context,postFood postFood){
  return  Container(
    margin: EdgeInsets.only(top:largeSize(context) ),
    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              width: fullWidth(context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(postFood.image))),
            )),
        Container(margin: EdgeInsets.only(left:standardSize(context),top: standardSize(context)),child: Text(postFood.text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade700),)),
        Container(margin: EdgeInsets.only(left:standardSize(context),bottom: mediumSize(context)),
          child: Row(children: [
            Icon(Icons.star,color: Colors.deepOrange,size: smallSize(context),),
            Text("4.9",style: TextStyle(color: Colors.deepOrange),),
            Text("(124 ratings) Cafe",style: TextStyle(color: Colors.grey),),
            SizedBox(width: mediumSize(context),),
            Text("Western Food",style: TextStyle(color: Colors.grey),)
          ],

          ),
        ),

      ],
    ),
  );


}
Widget popular(BuildContext context,PopularFood popularFood){
  return Container(height: xxlargeSize(context)*2,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: xxSmallSize(context),vertical: xxSmallSize(context)),
          height: 130,
          width: 230,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(popularFood.image),fit: BoxFit.cover),
              shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),

        ),
        Text(popularFood.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade700)),
        Row(children: [
          Icon(Icons.star,color: Colors.deepOrange,size: smallSize(context)),
          Text("4.9",style: TextStyle(color: Colors.deepOrange),),
          Text("(124 ratings)Cafe",style: TextStyle(color: Colors.grey),),
          SizedBox(width: mediumSize(context),),
          Text("Western Food",style: TextStyle(color: Colors.grey),),




        ],)
      ],
    ),
  );

}

Widget MostPopular(BuildContext context,postFood postFood){
  return Container(margin: EdgeInsets.symmetric(horizontal: standardSize(context),vertical: mediumSize(context)),
    child: Column(
      children: [
        Container(
          height: 250,
          width: 400,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(postFood.image),fit: BoxFit.cover),
              shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),),
          Text(postFood.text),
        Row(children: [
          Icon(Icons.star,color: Colors.deepOrange,size: smallSize(context)),
          Text("4.9",style: TextStyle(color: Colors.deepOrange),),
          Text("(124 ratings)Cafe",style: TextStyle(color: Colors.grey),),
        ]

        )

       ] ));
}

Widget RecentItem(BuildContext context,postFood postFood){
  return Container(margin: EdgeInsets.only(left:standardSize(context)),
    child: Row(
        children: [
      Column(children: [
    Container(
    margin: EdgeInsets.symmetric(horizontal: standardSize(context),vertical: xxSmallSize(context)),
  height: 100,
  width: 100,
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(postFood.image),fit: BoxFit.cover),
  shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),)
      ],

      ),
      Column(
        children: [
          Text(postFood.text),
          Row(children: [
            Text("coffee",style: TextStyle(color: Colors.grey),),
            SizedBox(width: mediumSize(context),),
            Text("Western Food",style: TextStyle(color: Colors.grey),),
          ],
      )
   ],)]));

}
