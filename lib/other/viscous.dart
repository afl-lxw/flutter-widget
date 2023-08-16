import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StickyDropletShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sticky Droplet Shape'),
      ),
      body: Center(
          child: Container(
        width: 150,
        height: 250,
        child: CustomPaint(
          painter: DropletPainter(),
        ),
      )),
    );
  }
}

class DropletPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    final path = Path()
      ..moveTo(centerX, centerY + 40)
      ..quadraticBezierTo(
          centerX + 80, centerY - 100, centerX - 20, centerY - 100)
      ..quadraticBezierTo(centerX - 40, centerY - 20, centerX, centerY + 40)
      ..close();

    final paint = Paint()
      ..color = Colors.blue.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final shadowPaint = Paint()
      ..color = Colors.blue.withOpacity(0.2)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10.0);

    canvas.drawPath(path, shadowPaint);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
