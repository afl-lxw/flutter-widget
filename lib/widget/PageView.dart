import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final List<Color> colors = [Colors.red, Colors.green, Colors.blue];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return Container(
          color: colors[index],
          child: Center(
            child: Text(
              ' Page ${index + 1}',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
