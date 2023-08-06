import 'package:flutter/material.dart';

class SizeAnimationExample extends StatefulWidget {
  const SizeAnimationExample({super.key});

  @override
  State<SizeAnimationExample> createState() => _SizeAnimationExampleState();
}

class _SizeAnimationExampleState extends State<SizeAnimationExample>
    with TickerProviderStateMixin {
  bool _isExpanded = false;

  void _toggleSize() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Animation Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleSize,
          child: AnimatedSize(
            vsync: this,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: Container(
              width: _isExpanded ? 200 : 100,
              height: _isExpanded ? 200 : 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                _isExpanded ? 'Expanded' : 'Collapsed',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
