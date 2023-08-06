import 'package:flutter/material.dart';

class TransformExample extends StatefulWidget {
  @override
  _TransformExampleState createState() => _TransformExampleState();
}

class _TransformExampleState extends State<TransformExample> {
  double _angle = 0.0;
  double _scale = 1.0;
  Offset _offset = Offset(0.0, 0.0);

  void _updateTransform() {
    setState(() {
      _angle += 45.0;
      _scale = _scale == 1.0 ? 1.5 : 1.0;
      _offset = Offset(_offset.dx + 50.0, _offset.dy + 50.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complex Transform Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform(
              transform: Matrix4.identity()
                ..translate(_offset.dx, _offset.dy)
                ..rotateZ(_angle * (3.1415927 / 180))
                ..scale(_scale),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Transformed',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _updateTransform,
              child: Text('Apply Transform'),
            ),
          ],
        ),
      ),
    );
  }
}
