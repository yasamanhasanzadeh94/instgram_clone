import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/dimens.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Instagram",
          style: TextStyle(
              fontFamily: "Billabong", color: Colors.black, fontSize: 28),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: fullWidth(context),
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  story_box(context),
                  story_box(context),
                  story_box(context),
                  story_box(context),
                  story_box(context),
                  story_box(context),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                postBox(context),
                postBox(context),
                postBox(context),
                postBox(context),
                postBox(context),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget story_box(BuildContext context) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(
            horizontal: xxSmallSize(context), vertical: xxSmallSize(context)),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                  "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg",
                ),
                fit: BoxFit.cover)),
      ),
      Text("name1")
    ],
  );
}

Widget postBox(BuildContext context) {
  return Container(
    width: fullWidth(context),
    height: fullHeight(context) / 1.4,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: xxSmallSize(context),vertical: smallSize(context)),
          child: Row(
            children: [
              Container(
                height: fullWidth(context) / 10,
                width: fullWidth(context) / 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg"))),
              ),
              Container(
                  margin:
                      EdgeInsetsDirectional.only(start: xSmallSize(context)),
                  child: Text(
                    "Text1",
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
              Expanded(child: SizedBox()),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: xSmallSize(context)),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(width: fullWidth(context),
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage("https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg"))),
            )
          ),
        ),
        Container(margin: EdgeInsets.symmetric(vertical:xxSmallSize(context) ),
          child: Row(children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.recommend)),
            IconButton(onPressed: () {}, icon: Icon(Icons.mode_comment_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            Expanded(child: SizedBox()),
            IconButton(onPressed: () {}, icon: Icon(Icons.save))
          ],),
        ),
        Container(margin: EdgeInsetsDirectional.only(start:smallSize(context),top:xSmallSize(context)),
          child:
        Row(children: [
          Text("138 likes",style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.left,),
          Expanded(child: SizedBox())
        ],),),

        Container(margin: EdgeInsetsDirectional.only(start:smallSize(context),top: xSmallSize(context)),
          child:
          Row(children: [
            Text("Text1",style: Theme.of(context).textTheme.bodyText1,textAlign: TextAlign.left,),
            Expanded(child: SizedBox())
          ],),),
        Container(margin: EdgeInsetsDirectional.only(start:xxSmallSize(context),top:xSmallSize(context),bottom: largeSize(context))
  ,child:
         Row(
           children:[

  Container(margin: EdgeInsets.symmetric(horizontal: smallSize(context))
    ,child: Text("He wakes up.He sees the sun rise.He brushes his teeth. \n He eats his breakfast",
               overflow: TextOverflow.ellipsis,),
  ),
         ]) ,),

      ],
    ),
  );
}
