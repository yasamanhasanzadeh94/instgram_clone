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
          IconButton(onPressed: () {},
              icon: Image.asset(
                'assets/share.png', width: iconSizeLarge(context),
                height: iconSizeLarge(context),))
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
                  PostBox(
                    post: fakeHomeList()[index],
                  ),
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

class PostBox extends StatefulWidget {
  PostModel post;

  PostBox({Key? key, required this.post}) : super(key: key);

  @override
  _PostBoxState createState() => _PostBoxState();
}

class _PostBoxState extends State<PostBox> {
  String likeImage = 'assets/heart_border.png';
  String saveImage = 'assets/unsave.png';

  @override
  Widget build(BuildContext context) {
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
    image: DecorationImage(
    image: NetworkImage(widget.post.avatar),fit: BoxFit.cover)),
    ),
    Container(
    margin:
    EdgeInsetsDirectional.only(start: xSmallSize(context)),
    child: Text(
    widget.post.userName,
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
    fit: BoxFit.fitWidth,
    image: NetworkImage(widget.post.image))),
    )),
    ),
    Container(
    margin: EdgeInsets.symmetric(vertical: xxSmallSize(context)),
    child: Row(
    children: [
    IconButton(
    onPressed: () {
    if (likeImage == 'assets/heart_border.png') {
    setState(() {
    likeImage = 'assets/heart_fill.png';
    });
    } else {
    setState(() {
    likeImage = 'assets/heart_border.png';
    });
    }
    },
    icon: Image.asset(
    likeImage,
    width: iconSizeLarge(context),
    height: iconSizeLarge(context),
    )),
    IconButton(
    onPressed: () {}, icon: Image.asset('assets/comment.png')),
    IconButton(onPressed: () {}, icon: Image.asset('assets/share.png',width: iconSizeLarge(context),height: iconSizeLarge(context),)),
    Expanded(child: SizedBox()),
    IconButton(onPressed: () {
    if(saveImage == 'assets/unsave.png'){
    setState(() {
    saveImage = 'assets/save.png';
    });
    } else{
    setState(() {
    saveImage = 'assets/unsave.png';
    });
    }
    },
    icon: Image.asset(saveImage,width: iconSizeLarge(context),
    height: iconSizeLarge(context),),)
    ],
    ),
    ),
    Container(
    margin: EdgeInsetsDirectional.only(
    start: smallSize(context), top: xSmallSize(context)),
    child: Row(
    children: [
    Text(
    "${widget.post.likeCount} likes",
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
    widget.post.userName,
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
    widget.post.caption,
    overflow: TextOverflow.ellipsis,
    ),
    ),
    ],
    ),
    );
  }
}
