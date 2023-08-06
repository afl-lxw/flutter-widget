import 'package:flutter/material.dart';

class AlignTransitionWidget extends StatefulWidget {
  @override
  _AlignTransitionWidgetState createState() => _AlignTransitionWidgetState();
}

class _AlignTransitionWidgetState extends State<AlignTransitionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _animation;
  final Alignment _startAlignment = Alignment.topLeft;
  final Alignment _endAlignment = Alignment.bottomRight;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = AlignmentTween(
      begin: _startAlignment,
      end: _endAlignment,
    ).animate(_controller);
  }

  void _toggleAlignment() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlignTransition Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              child: AlignTransition(
                alignment: _animation,
                child: const FlutterLogo(size: 100),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleAlignment,
              child: const Text('Toggle Alignment'),
            ),
          ],
        ),
      ),
    );
  }
}
