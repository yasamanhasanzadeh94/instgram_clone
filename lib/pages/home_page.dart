import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/pages/models/post_model.dart';
import 'package:untitled6/pages/models/story.dart';
import 'package:untitled6/styles/dimens.dart';

import '../fake_data.dart';

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
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    story_box(context, homeStoriesFake()[index]),
                itemCount: homeStoriesFake().length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            ListView.builder(
              itemBuilder: (context, index) =>
                  postBox(context, fakeHomeList()[index]),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: fakeHomeList().length,
            )
          ],
        ),
      ),
    );
  }
}

Widget story_box(BuildContext context, Story story) {
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
                  story.avatar,
                ),
                fit: BoxFit.cover)),
      ),
      Text(story.userName)
    ],
  );
}

Widget postBox(BuildContext context, PostModel post) {
  return Container(
    width: fullWidth(context),
    height: fullHeight(context) / 1.4,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: xxSmallSize(context), vertical: smallSize(context)),
          child: Row(
            children: [
              Container(
                height: fullWidth(context) / 10,
                width: fullWidth(context) / 10,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: NetworkImage(post.avatar))),
              ),
              Container(
                  margin:
                      EdgeInsetsDirectional.only(start: xSmallSize(context)),
                  child: Text(
                    post.userName,
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
              child: Container(
                width: fullWidth(context),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth, image: NetworkImage(post.image))),
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: xxSmallSize(context)),
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Image.asset("heart_border.png")),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.mode_comment_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              Expanded(child: SizedBox()),
              IconButton(onPressed: () {}, icon: Icon(Icons.save))
            ],
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(
              start: smallSize(context), top: xSmallSize(context)),
          child: Row(
            children: [
              Text(
                "${post.likeCount} likes",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.left,
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(
              start: smallSize(context), top: xSmallSize(context)),
          child: Row(
            children: [
              Text(
                post.userName,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.left,
              ),
              Expanded(child: SizedBox())
            ],
          ),
        ),
        Container(
          margin: EdgeInsetsDirectional.only(
              start: smallSize(context),
              top: xSmallSize(context),
              bottom: largeSize(context)),
          width: fullWidth(context),
          child: Text(
            post.caption,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}
