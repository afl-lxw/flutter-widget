import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  var bool_isFirst = true;

  void _toggleChild() {
    setState(() {
      bool_isFirst = !bool_isFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedCrossFade Example')),
      body: Center(
        child: GestureDetector(
          onTap: _toggleChild,
          child: AnimatedCrossFade(
            crossFadeState: bool_isFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
            firstChild: const FlutterLogo(
                size: 100,
                style: FlutterLogoStyle.horizontal,
                curve: Curves.bounceInOut),
            secondChild: const FlutterLogo(
                size: 100,
                style: FlutterLogoStyle.markOnly,
                curve: Curves.easeIn),
          ),
        ),
      ),
    );
  }
}
