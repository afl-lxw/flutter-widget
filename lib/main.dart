import 'package:flutter/material.dart';
import 'Animation/Hero.dart';
import 'widget/AnimatedList.dart';

import 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      routes: {
        '/detail': (context) => DetailPage(),
        ...RollWidgetRouter.router,
        ...AnimationWidgetRouter.router,
        ...OtherWidgetRouter.router
      },
      home: Scaffold(body: TabBarExample()),
    );
  }
}

class TabBarExample extends StatefulWidget {
  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget Example'),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: const [
            Tab(
              text: 'widget',
            ),
            Tab(
              text: 'Animation',
            ),
            Tab(
              text: 'Gesture',
            ),
            Tab(
              text: 'Button',
            ),
            Tab(
              text: 'Other',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView.builder(
            itemCount: RollWidgetRouter.router.length,
            itemBuilder: (context, index) {
              final routeName = RollWidgetRouter.router.keys.toList()[index];
              return ListTile(
                title: Text(routeName),
                onTap: () {
                  print('routeName: $routeName');
                  // Navigator.pushNamed(context, routeName);
                  Navigator.of(context)
                      .pushNamed(routeName, arguments: routeName);
                },
              );
            },
          ),
          ListView.builder(
            itemCount: AnimationWidgetRouter.router.length,
            itemBuilder: (context, index) {
              final routeName =
                  AnimationWidgetRouter.router.keys.toList()[index];
              return ListTile(
                title: Text(routeName),
                onTap: () {
                  print('routeName: $routeName');
                  Navigator.pushNamed(context, routeName);
                },
              );
            },
          ),
          ListView.builder(
            itemCount: RollWidgetRouter.router.length,
            itemBuilder: (context, index) {
              final routeName = RollWidgetRouter.router.keys.toList()[index];
              return ListTile(
                title: Text(routeName),
                onTap: () {
                  print('routeName: $routeName');
                  // Navigator.pushNamed(context, routeName);
                  Navigator.of(context)
                      .pushNamed(routeName, arguments: routeName);
                },
              );
            },
          ),
          ListView.builder(
            itemCount: AnimationWidgetRouter.router.length,
            itemBuilder: (context, index) {
              final routeName =
                  AnimationWidgetRouter.router.keys.toList()[index];
              return ListTile(
                title: Text(routeName),
                onTap: () {
                  print('routeName: $routeName');
                  Navigator.pushNamed(context, routeName);
                },
              );
            },
          ),
          ListView.builder(
            itemCount: OtherWidgetRouter.router.length,
            itemBuilder: (context, index) {
              final routeName = OtherWidgetRouter.router.keys.toList()[index];
              return ListTile(
                title: Text(routeName),
                onTap: () {
                  print('routeName: $routeName');
                  Navigator.pushNamed(context, routeName);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
