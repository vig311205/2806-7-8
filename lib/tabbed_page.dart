import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  // late TabController myTabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // myTabController.animateTo(1);
          },
          child: Text("2nd Tab"),
        ),
        appBar: AppBar(
          bottom: TabBar(
            // controller: myTabController,
            tabs: const [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: TabBarView(
          // controller: myTabController,
          children: const [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit), // pages
            Icon(Icons.directions_bike), // pages
          ],
        ),
      ),
    );
  }
}
