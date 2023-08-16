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
        ...BtnWidgetRouter.router,
        ...GestureWidgetRouter.router,
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

List<String> tabLabels = ['widget', 'Animation', 'Gesture', 'Button', 'Other'];
Map<String, List<String>> tabContent = {
  'widget': RollWidgetRouter.router.keys.toList(),
  'Animation': AnimationWidgetRouter.router.keys.toList(),
  'Gesture': GestureWidgetRouter.router.keys.toList(),
  'Button': BtnWidgetRouter.router.keys.toList(),
  'Other': OtherWidgetRouter.router.keys.toList(),
};

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  final ScrollController _topScrollController = ScrollController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget for Text'),
      ),
      body: _PageRouterView(),
    );
  }

  List<String> getSelectedRoutes() {
    String selectedLabel = tabLabels[_currentIndex];
    if (tabContent.containsKey(selectedLabel)) {
      return tabContent[selectedLabel]!;
    } else {
      return [];
    }
  }

  Widget Function(BuildContext) findRouteBuilder(String routeName) {
    List<Map<String, Widget Function(BuildContext)>> allRouters = [
      RollWidgetRouter.router,
      AnimationWidgetRouter.router,
      BtnWidgetRouter.router,
      GestureWidgetRouter.router,
      OtherWidgetRouter.router,
    ];

    for (var router in allRouters) {
      if (router.containsKey(routeName)) {
        return router[routeName]!;
      }
    }
    return null!;
  }

  Column _PageRouterView() {
    final selectedLabel = tabLabels[_currentIndex];
    final selectedRoutes = tabContent[selectedLabel]; // 获取选中标签对应的路由列表

    return Column(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: ListView.builder(
            controller: _topScrollController,
            scrollDirection: Axis.horizontal,
            itemCount: tabLabels.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                  // Scroll to the selected tab
                  _topScrollController.animateTo(
                    index == tabContent.length
                        ? 0
                        : index >= 3
                            ? index * 50
                            : index * 70,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:
                        _currentIndex == index ? Colors.black : Colors.grey[50],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    tabLabels[index],
                    style: TextStyle(
                        color: _currentIndex == index
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: getSelectedRoutes().length, // 获取选中标签对应的路由数量
            itemBuilder: (context, index) {
              String routeName = getSelectedRoutes()[index]; // 获取对应路由名称

              // 根据路由名称查找路由回调函数并调用
              Widget Function(BuildContext) routeBuilder =
                  findRouteBuilder(routeName);
              if (routeBuilder != null) {
                return GestureDetector(
                    onTap: () {
                      // 跳转到对应的路由页面
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: routeBuilder),
                      );
                    },
                    child: ListTile(
                      title: Text(routeName),
                    ));
              } else {
                return SizedBox.shrink(); // 没有找到对应的路由回调函数，返回一个空的占位组件
              }
            },
          ),
        ),
      ],
    );
  }
}
