import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({super.key});

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  bool _isBold = false;
  double _fontSize = 20.0;
  Color _color = Colors.black;

  void _toggleStyle() {
    setState(() {
      _isBold = !_isBold;
      _fontSize = _isBold ? 24.0 : 20.0;
      _color = _isBold ? Colors.blue : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedDefaultTextStyle Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedDefaultTextStyle(
              child: Text('Hello, Flutter!'),
              style: TextStyle(
                fontWeight: _isBold ? FontWeight.bold : FontWeight.normal,
                fontSize: _fontSize,
                color: _color,
              ),
              duration: Duration(milliseconds: 500),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleStyle,
              child: Text('Toggle Style'),
            ),
          ],
        ),
      ),
    );
  }
}
