import 'package:flutter/material.dart';

class AnimatedDecorationExample extends StatefulWidget {
  @override
  _AnimatedDecorationExampleState createState() =>
      _AnimatedDecorationExampleState();
}

class _AnimatedDecorationExampleState extends State<AnimatedDecorationExample>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Decoration> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _animation = DecorationTween(
      begin: BoxDecoration(color: Colors.blue),
      end: BoxDecoration(color: Colors.red),
    ).animate(_animationController);
  }

  void _toggleDecoration() {
    if (_animationController.status == AnimationStatus.completed) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Decoration Example'),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          position: DecorationPosition.background,
          decoration: _animation,
          child: GestureDetector(
            onTap: _toggleDecoration,
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              child: Text(
                'Tap to Change Decoration',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(home: AnimatedDecorationExample()));
}
