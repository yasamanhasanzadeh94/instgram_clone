import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabExample extends StatefulWidget {
  const TabExample({Key? key}) : super(key: key);

  @override
  _TabExampleState createState() => _TabExampleState();
}

class _TabExampleState extends State<TabExample>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  Color boxColor = Colors.red;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    if (tabController != null) {
      tabController!.addListener(() {
        if (tabController!.index == 1) {
          setState(() {
            boxColor = Colors.black;
          });
        } else {
          setState(() {
            boxColor = Colors.red;
          });
        }
      });
    }
      return Scaffold(
        appBar: AppBar(
          title: const Text("dsaasdsda"),
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                child: Text("Tab1"),
              ),
              Tab(
                child: Text("Tab2"),
              ),
              Tab(
                child: Text("Tab3"),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: boxColor,
            ),
            Expanded(
              child: TabBarView(controller: tabController, children: const [
                Text("1"),
                Text("2"),
                Text("3"),
              ]),
            ),
          ],
        ),
      );
    }
  }

