import 'package:flutter/material.dart';

class ScrollConfigurationWidget extends StatefulWidget {
  const ScrollConfigurationWidget({super.key});

  @override
  State<ScrollConfigurationWidget> createState() =>
      _ScrollConfigurationWidgetState();
}

class _ScrollConfigurationWidgetState extends State<ScrollConfigurationWidget> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyScrollBehavior(),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return BouncingScrollPhysics();
  }
}
