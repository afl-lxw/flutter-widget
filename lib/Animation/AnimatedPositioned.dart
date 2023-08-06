import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  bool _isLeft = true;
  bool _isTop = true;

  void _togglePosition() {
    setState(() {
      _isLeft = !_isLeft;
      _isTop = !_isTop;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedPositioned Example')),
      body: Center(
          child: SizedBox(
        height: 200,
        width: 300,
        child: Stack(
          children: [
            AnimatedPositioned(
              left: _isLeft ? 0 : 100,
              top: _isTop ? 0 : 100,
              duration: Duration(seconds: 1),
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            ElevatedButton(
              onPressed: _togglePosition,
              child: Text('Toggle Position'),
            ),
          ],
        ),
      )),
    );
  }
}
