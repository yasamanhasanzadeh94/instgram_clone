import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/styles/dimens.dart';
import 'package:untitled6/widgets/back_icon_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme
                .of(context)
                .backgroundColor,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ))
            ],
            centerTitle: true,
            title: Text(
              "Behzadi.official",
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            leading: backIcon(context),
          ),
          SliverToBoxAdapter(
              child: Container(
                width: fullWidth(context),
                margin: EdgeInsets.symmetric(
                    horizontal: standardSize(context),
                    vertical: largeSize(context)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          width: 80,
                          height: 80,
                        ),
                        Expanded(child: SizedBox()),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: standardSize(context)),
                              child: Column(
                                children: [
                                  Text("asdd"),
                                  Text("asdd"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: standardSize(context)),
                              child: Column(
                                children: [
                                  Text("asdd"),
                                  Text("asdd"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: standardSize(context)),
                              child: Column(
                                children: [
                                  Text("asdd"),
                                  Text("asdd"),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                        margin:
                        EdgeInsets.symmetric(vertical: xxSmallSize(context)),
                        child: Text("Abvcsadasdljdaskjadlssadsd")),
                    Container(
                        margin:
                        EdgeInsets.symmetric(vertical: xxSmallSize(context)),
                        child: Text(
                            "Abvcsadasdljdasaasdasdasdasdsadsadasdkjadlssadsd")),
                    Container(
                        margin:
                        EdgeInsets.symmetric(vertical: xxSmallSize(context)),
                        child: Text(
                            "Abvcsadasdljdasaasdasdasdasdsadsadasdkjadlssadsd")),
                    Container(
                      margin: EdgeInsets.only(top: standardSize(context)),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: xxSmallSize(context)),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(elevation: 0,
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0)),
                                  onPressed: () {},
                                  child: Text("Follow"),
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: xxSmallSize(context)),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Message",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(vertical: 0),
                                      elevation: 0,
                                      primary: Theme
                                          .of(context)
                                          .backgroundColor),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: xxSmallSize(context)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0)),
                                    onPressed: () {},
                                    child: Icon(Icons.arrow_drop_down)
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final PreferredSize child;

  SliverAppBarDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    // TODO: implement build
    return child;
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => child.preferredSize.height;

  @override
  // TODO: implement minExtent
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;
  }
}
