import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled6/models/models/category.dart';
import 'package:untitled6/pages/signup_page.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';
import 'login_page.dart';

class HomeMonkey extends StatefulWidget {
  const HomeMonkey({Key? key}) : super(key: key);

  @override
  _HomeMonkeyState createState() => _HomeMonkeyState();

}

class _HomeMonkeyState extends State<HomeMonkey> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(elevation: 0,backgroundColor: Colors.white,
      title: Text("Good morning Akila!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
      actions: [
        Container(margin: EdgeInsets.only(right: standardSize(context)),child: Image.asset("assets/shopping-cart.png",height: 20,width: 23,))
      ],
    ),
    body: ListView(scrollDirection: Axis.vertical,shrinkWrap: true,
       children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
        Container(margin: EdgeInsets.only(left: standardSize(context),top: mediumSize(context),),child: Text("Delivering to",style: TextStyle(color: Colors.grey),)),
        Container(margin: EdgeInsets.only(left: standardSize(context),),
          child: Row(children: [
            Text("Current Location",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade600),),
            SizedBox(width: standardSize(context),),
             GestureDetector(onTap: () {},child: Icon(Icons.keyboard_arrow_down,color: Colors.deepOrange,)),
          ],),
        ),
      ],),
        SizedBox(height: standardSize(context),),

        TextFieldMonkey(context, "Search food",iconData: Icons.search),
        SizedBox(height: mediumSize(context),),
        Container(width: fullWidth(context),height: fullHeight(context)/5,
          child: ListView.builder(itemBuilder: (context, index) => categoryWidget(context,fakeListCategory()[index]),
            itemCount: fakeListCategory().length,scrollDirection: Axis.horizontal,shrinkWrap: true,
          ),
        ),
        SizedBox(height: xxlargeSize(context),),
        Container(margin: EdgeInsets.symmetric(horizontal: standardSize(context)),
          height:fullWidth(context)/5 ,width: fullWidth(context),
          child: Row(children: [
            Text("Popular Restuarant",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade700),),
            Expanded(child: SizedBox(),),
            Text("View all",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)
          ],),
        ),
        ListView.builder(itemBuilder: (context, index) => restaurantWidget(context, fakeListRestaurant()[index]),
          itemCount: fakeListRestaurant().length,scrollDirection: Axis.vertical,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),),
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
          child: ListView.builder(itemBuilder: (context, index) => popularRestaurant(context, fakeListPopular()[index]),
            itemCount: fakeListPopular().length,scrollDirection: Axis.horizontal,shrinkWrap: true,
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
        SizedBox(height: xlargeSize(context)),
        Container(margin: EdgeInsets.only(bottom: largeSize(context),left: standardSize(context),right: standardSize(context)),
          child: Row(children: [
            Text("Recent Items",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey.shade700),),
            Expanded(child: SizedBox(),),
            Text("View all",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),)
          ],),
        ),
        SizedBox(height: mediumSize(context),),
        Container(
          child: ListView.builder(itemBuilder: (context, index) => recentRestaurant(context, fakeListRecent()[index]),
            itemCount: 3,scrollDirection: Axis.vertical,shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),),



        )

       ],),


    ],
    ) );
     



  }
}

Widget categoryWidget(BuildContext context,Model category){
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: smallSize(context),vertical: xxSmallSize(context)),
        height: fullHeight(context)/7.5,
        width: fullHeight(context)/7.5,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(category.image),fit: BoxFit.cover),
        shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),

      ),
      Container(margin: EdgeInsets.only(top: xxSmallSize(context)),child: Text(category.name,style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),))
    ],
  );

}

Widget restaurantWidget(BuildContext context,Model restaurant){
  return  Container(
    margin: EdgeInsets.only(top:smallSize(context)),
    child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              width: fullWidth(context),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(restaurant.image))),
            )),
        Container(margin: EdgeInsets.only(left:standardSize(context),top: standardSize(context)),child: Text(restaurant.name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey.shade700),)),
        Container(margin: EdgeInsets.only(left:standardSize(context),bottom: mediumSize(context)),
          child: Row(children: [
            Icon(Icons.star,color: Colors.deepOrange,size: iconSize(context),),
            Text("4.9",style: TextStyle(color: Colors.deepOrange),),
            Text("(124 ratings) Cafe",style: TextStyle(color: Colors.grey),),
            SizedBox(width: mediumSize(context),),
            Expanded(child: Text("Western Food",style: TextStyle(color: Colors.grey),maxLines: 1,overflow:TextOverflow.ellipsis,))
          ],

          ),
        ),

      ],
    ),
  );


}


Widget popularRestaurant(BuildContext context,Model popular){
  return AspectRatio(aspectRatio: 16/11,
    child: Container(margin: EdgeInsets.symmetric(horizontal: mediumSize(context),vertical: mediumSize(context)),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage(popular.image),fit: BoxFit.cover),
                shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),),
            Container(child: Text(popular.name)),
          Container(margin: EdgeInsets.symmetric(horizontal: xxSmallSize(context)),
            child: Row(children: [
              Text("coffee",style: TextStyle(color: Colors.grey),),
              SizedBox(width: mediumSize(context),),
              Expanded(child: Text("Western Food",style: TextStyle(color: Colors.grey),maxLines: 1,overflow:TextOverflow.ellipsis,)),
            ]

            ),
          )

         ] )),
  );
}

Widget recentRestaurant(BuildContext context,Model recent){
  return Container(margin: EdgeInsets.only(left:standardSize(context)),
    child: Row(
        children: [
      Column(children: [
    Container(
    margin: EdgeInsets.symmetric(horizontal: standardSize(context),vertical: xxSmallSize(context)),
  height: 100,
  width: 100,
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(recent.image),fit: BoxFit.cover),
  shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10)),)
      ],

      ),
      Column(
        children: [
          Text(recent.name),
          Row(children: [
            Text("coffee",style: TextStyle(color: Colors.grey),),
            SizedBox(width: mediumSize(context),),
            Expanded(child: Text("Western Food",style: TextStyle(color: Colors.grey),maxLines: 1,overflow:TextOverflow.ellipsis,)),
          ],
      )
   ],)]));

}
