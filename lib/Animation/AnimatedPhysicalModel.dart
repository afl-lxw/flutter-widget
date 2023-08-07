import 'package:flutter/material.dart';

class PhysicalModelWidget extends StatefulWidget {
  const PhysicalModelWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhysicalModelWidgetState createState() => _PhysicalModelWidgetState();
}

class _PhysicalModelWidgetState extends State<PhysicalModelWidget> {
  bool _isPressed = false;

  void _togglePress() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Physical Model Widget'),
      ),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut, // Apply a curve for smoother transition
          shape: BoxShape.rectangle,
          elevation: _isPressed ? 30 : 4,
          color: Colors.blue,
          shadowColor: Colors.black,
          animateColor: false,
          animateShadowColor: true,
          borderRadius: BorderRadius.circular(_isPressed ? 60 : 8),
          child: InkWell(
            onTap: _togglePress,
            child: Container(
              width: 200,
              height: 100,
              alignment: Alignment.center,
              child: const Text(
                'Press Me',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
