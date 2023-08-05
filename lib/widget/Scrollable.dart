import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollableWidget extends StatefulWidget {
  const ScrollableWidget({super.key});

  @override
  State<ScrollableWidget> createState() => _ScrollableWidgetState();
}

class _ScrollableWidgetState extends State<ScrollableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scrollable(
      axisDirection: AxisDirection.down,
      viewportBuilder: (BuildContext context, ViewportOffset offset) {
        return CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item $index'),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
          physics: AlwaysScrollableScrollPhysics(),
          controller: ScrollController(),
        );
      },
    );
  }
}
