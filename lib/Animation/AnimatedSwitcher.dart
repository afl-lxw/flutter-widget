import 'package:flutter/material.dart';

class SwitcherExample extends StatefulWidget {
  const SwitcherExample({super.key});

  @override
  State<SwitcherExample> createState() => _SwitcherExampleState();
}

class _SwitcherExampleState extends State<SwitcherExample> {
  int _currentIndex = 0;
  List<Color> _colors = [Colors.red, Colors.blue, Colors.green];

  void _changeColor() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (child, animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: Container(
              key: ValueKey<int>(_currentIndex),
              width: 200,
              height: 200,
              color: _colors[_currentIndex],
              alignment: Alignment.center,
              child: Text(
                'Color ${_currentIndex + 1}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _changeColor,
            child: Text('Change Color'),
          ),
        ],
      ),
    );
  }
}
