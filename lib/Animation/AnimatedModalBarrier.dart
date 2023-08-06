import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatefulWidget {
  const AnimatedModalBarrierWidget({super.key});

  @override
  State<AnimatedModalBarrierWidget> createState() =>
      _AnimatedModalBarrierWidgetState();
}

class _AnimatedModalBarrierWidgetState
    extends State<AnimatedModalBarrierWidget> {
  bool _isDialogVisible = false;

  void _showDialog() {
    setState(() {
      _isDialogVisible = true;
    });
  }

  void _closeDialog() {
    setState(() {
      _isDialogVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedModalBarrier Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _showDialog,
              child: Text('Show Dialog'),
            ),
            _isDialogVisible
                ? AnimatedModalBarrier(
                    dismissible: true,
                    color: AlwaysStoppedAnimation<Color>(
                        Colors.black.withOpacity(0.5)),
                    semanticsLabel: 'Modal Barrier',
                  )
                : SizedBox(),
          ],
        ),
      ),
      floatingActionButton: _isDialogVisible
          ? FloatingActionButton(
              onPressed: _closeDialog,
              child: Icon(Icons.close),
            )
          : null,
    );
  }
}
