import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TabExample1 extends StatefulWidget {
  const TabExample1({Key? key}) : super(key: key);

  @override
  _TabExample1State createState() => _TabExample1State();
}

class _TabExample1State extends State<TabExample1> with SingleTickerProviderStateMixin{
  TabController? tabController;
  Color boxColor = Colors.red;
  @override
  void initState() {
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    if(tabController!=null) {
      tabController!.addListener(() {
        if (tabController!.index == 1) {
          setState(() {
            boxColor = Colors.blue;
          });
        } else {
          setState(() {
            boxColor = Colors.green;
          });
        }
      });
    }
    return Scaffold(
      appBar: AppBar(title:Text("hello"),
        bottom: TabBar(
            controller:tabController,
            tabs: [
         Tab(child: Text("Tab1"),),
         Tab(child: Text("Tab2"),),
          Tab(child: Text("Tab3"),)

        ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 200,
            color:boxColor,
            child: Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                Text("1"),
                Text("2"),
                Text("3")
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
