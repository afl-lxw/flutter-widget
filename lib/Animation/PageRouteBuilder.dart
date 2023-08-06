import './Hero.dart';

import 'package:flutter/material.dart';

class PageRouteBuilderWidget extends StatefulWidget {
  const PageRouteBuilderWidget({super.key});

  @override
  State<PageRouteBuilderWidget> createState() => _PageRouteBuilderWidgetState();
}

class _PageRouteBuilderWidgetState extends State<PageRouteBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return DetailPage();
              },
              transitionDuration: Duration(seconds: 1),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
            ),
          );
        },
        child: Text('Go to Detail'),
      ),
    );
  }
}
