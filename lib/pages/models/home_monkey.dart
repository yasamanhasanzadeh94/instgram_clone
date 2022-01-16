import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:untitled6/pages/home_page.dart';
import 'package:untitled6/styles/colors.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/text_field_widget.dart';

class HomeMonkey extends StatefulWidget {
  const HomeMonkey({Key? key}) : super(key: key);

  @override
  _HomeMonkeyState createState() => _HomeMonkeyState();
}

class _HomeMonkeyState extends State<HomeMonkey> with SingleTickerProviderStateMixin{
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this);
  }

  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(currentIndex:index,onTap: (value) {
        setState(() {
          index=value;
        });
      },
          unselectedItemColor: Colors.grey,selectedItemColor: Colors.deepOrange,
          items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/menu.png",width: 30,height: 30,),label: "Menu",
        ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/offer.png",width: 30,height: 30),label: "Offers",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/home-button.png",width: 30,height: 30),label: ""
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/user.png",width: 30,height: 30),label: "Profile"
            ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/more.png",width: 30,height: 30),label: "More"
            ),

      ]
      ),
      appBar:
     AppBar(backgroundColor: backgroundColor,
       elevation: 0,
        title: Text("Good morning Akila!",style: TextStyle(color: Colors.black),),
       actions: [
         Image.asset("assets/shopping-cart.png",width: 40,height: 40,)
       ],
     ) ,
      body:
    Container(margin: EdgeInsets.symmetric(vertical: xlargeSize(context),horizontal: xlargeSize(context)),
    child: SingleChildScrollView(
      child: Column(
      children: [
        Row(
          children: [
            Text("Delivering to",style:TextStyle(color: Colors.grey,) ,),
          ],
        ),
      Row(
        children: [
          Text("Current Location"),
          SizedBox(width: smallSize(context),),
          Icon(Icons.keyboard_arrow_down,color: Colors.deepOrange,)
        ],
      ),
      Container(margin: EdgeInsets.only(bottom: largeSize(context),top: largeSize(context)),
          decoration: BoxDecoration(color: Colors.grey.shade200,
              border: Border.all(style: BorderStyle.none ),borderRadius: BorderRadius.circular(35)),
          child: TextField(
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(horizontal: mediumSize(context)),
                hintText: "Search food",
                hintStyle: Theme.of(context).textTheme.bodyText2,
                border: InputBorder.none,
          )),
      ),
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Column(children: [
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/offer.jfif"),),
                      shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
                Text("Offers"),],),
                Column(children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/srilanka.png"),),
                        shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
                  Text("SrI Lankan"),],),
                Column(children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/italian.png"),),
                        shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
                  Text("Italian"),],),
                Column(children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/indian.png"),),
                        shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
                  Text("Indian"),],),
                Column(children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/persian.png"),),
                        shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
                  Text("Persian"),],),


              ],
          ),
        ),
        Container(margin: EdgeInsets.only(top: xxlargeSize(context),bottom: mediumSize(context)),
          child: Row(
            children: [
              Text("Popular Restaurents",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Expanded(child: SizedBox()),
              Text("View all",style: TextStyle(color: Colors.deepOrange),)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: xSmallSize(context),),
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                width: fullWidth(context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/pizza.jfif"))),
              )),
        ),
        Row(
          children: [
            Text("Minute by tuk tuk",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
          ],
        ),
        Row(children: [
          Icon(Icons.star,color: Colors.deepOrange,),
          Text("4.9",style: TextStyle(color: Colors.deepOrange),),
          Text("(124 rating) cafe",style: TextStyle(color: Colors.grey),),
         SizedBox(width:smallSize(context),),
          Text("Western Food",style: TextStyle(color: Colors.grey),),
        ],
          
        ),
        SizedBox(height: mediumSize(context),),
        Container(
          margin: EdgeInsets.symmetric(vertical: xSmallSize(context),),
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                width: fullWidth(context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/breakfast.jfif"))),
              )),
        ),
        Row(
          children: [
            Text("Cafe de Noir",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
          ],
        ),
        Row(children: [
          Icon(Icons.star,color: Colors.deepOrange,),
          Text("4.9",style: TextStyle(color: Colors.deepOrange),),
          Text("(124 rating) cafe",style: TextStyle(color: Colors.grey),),
          SizedBox(width:smallSize(context),),
          Text("Western Food",style: TextStyle(color: Colors.grey),),
        ],

        ),


        SizedBox(height: mediumSize(context),),
        Container(
          margin: EdgeInsets.symmetric(vertical: xSmallSize(context),),
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                width: fullWidth(context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/bakery.jfif"))),
              )),
        ),
        Row(
          children: [
            Text("Bakes by Tella",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,),),
          ],
        ),
        Row(children: [
          Icon(Icons.star,color: Colors.deepOrange,),
          Text("4.9",style: TextStyle(color: Colors.deepOrange),),
          Text("(124 rating) cafe",style: TextStyle(color: Colors.grey),),
          SizedBox(width:smallSize(context),),
          Text("Western Food",style: TextStyle(color: Colors.grey),),
        ],

        ),


        Container(margin: EdgeInsets.only(top: xxlargeSize(context),bottom: mediumSize(context)),
          child: Row(
            children: [
              Text("Most Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Expanded(child: SizedBox()),
              Text("View all",style: TextStyle(color: Colors.deepOrange),)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [Column(children: [
              Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                  width: 200,
                  height: 120,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/pizza.jfif"),),
                    shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
              Text("Cafe De Bambaa"),
              Row(children: [
                Text("Cafe",style: TextStyle(color: Colors.grey),),
                SizedBox(width:smallSize(context),),
                Text("Western Food",style: TextStyle(color: Colors.grey),),
                SizedBox(width:smallSize(context),),
                Icon(Icons.star,color: Colors.deepOrange,),
                Text("4.9",style: TextStyle(color: Colors.deepOrange),),


              ],
              ),
            ],),

              Column(children: [
                Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
                    width: 200,
                    height: 120,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/offer.jfif"),),
                      shape: BoxShape.rectangle,borderRadius:BorderRadius.circular(20),)),
                Text("Burger by Bumbaa",),
                Row(children: [
                  Text("Cafe",style: TextStyle(color: Colors.grey),),
                  SizedBox(width:smallSize(context),),
                  Text("Western Food",style: TextStyle(color: Colors.grey),),
                  SizedBox(width:smallSize(context),),
                  Icon(Icons.star,color: Colors.deepOrange,),
                  Text("4.9",style: TextStyle(color: Colors.deepOrange),),
                ],
                ),
              ],),
            ],
          ),
        ),
        Container(margin: EdgeInsets.only(top: xxlargeSize(context),bottom: mediumSize(context)),
          child: Row(
            children: [
              Text("Recent Items",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              Expanded(child: SizedBox()),
              Text("View all",style: TextStyle(color: Colors.deepOrange),)
            ],
          ),
        ),
        Row(
         children: [
           Column(
             children: [
               Image.asset("assets/pizza1.jfif",width: 60,height: 60,)
             ],
           ),
           Container(margin: EdgeInsets.only(left: smallSize(context)),
             child: Column(
               children: [
                 Text("Mulberry Pizza by Josh",style: TextStyle(fontWeight: FontWeight.bold)),
                 Row(children: [
                   Text("Cafe",style: TextStyle(color: Colors.grey),),
                   SizedBox(width:smallSize(context),),
                   Text("Western Food",style: TextStyle(color: Colors.grey),),

                 ],),
                 Row(children: [
                   Icon(Icons.star,color: Colors.deepOrange,),
                   Text("4.9",style: TextStyle(color: Colors.deepOrange),),
                   Text("(124 rating)",style: TextStyle(color: Colors.grey),),


                 ],)

               ],
             ),
           )
         ],
        ),
        Row(
          children: [
            Column(
              children: [
                Image.asset("assets/coffe.jfif",width: 60,height: 60,)
              ],
            ),
            Container(margin: EdgeInsets.only(left: smallSize(context)),
              child: Column(
                children: [
                  Text("Barita",style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(children: [
                    Text("Cafe",style: TextStyle(color: Colors.grey),),
                    SizedBox(width:smallSize(context),),
                    Text("coffee",style: TextStyle(color: Colors.grey),),

                  ],),
                  Row(children: [
                    Icon(Icons.star,color: Colors.deepOrange,),
                    Text("4.9",style: TextStyle(color: Colors.deepOrange),),
                    Text("(124 rating)",style: TextStyle(color: Colors.grey),),


                  ],)

                ],
              ),
            )
          ],
        ),
        Container(margin: EdgeInsets.symmetric(horizontal: mediumSize(context)),
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset("assets/pizaar.jfif",width: 60,height: 60,)
                ],
              ),
              Container(margin: EdgeInsets.only(left: smallSize(context)),
                child: Column(
                  children: [
                    Text("Pizza Rush Hour",style: TextStyle(fontWeight: FontWeight.bold)),
                    Row(children: [
                      Text("Cafe",style: TextStyle(color: Colors.grey),),
                      SizedBox(width:smallSize(context),),
                      Text("Italian Food",style: TextStyle(color: Colors.grey),),

                    ],),
                    Row(children: [
                      Icon(Icons.star,color: Colors.deepOrange,),
                      Text("4.9",style: TextStyle(color: Colors.deepOrange),),
                      Text("(124 rating)",style: TextStyle(color: Colors.grey),),


                    ],)

                  ],
                ),
              )
            ],
          ),
        ),



      ],
      ),
    ),

    ));
  }
}
