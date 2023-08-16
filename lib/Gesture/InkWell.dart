import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  const InkWellWidget({super.key});

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('InWell'),
        ),
        body: InkWell(
          onTap: () {
            print('Tapped');
          },
          splashColor: Colors.red, // 水波纹扩散颜色
          borderRadius: BorderRadius.circular(8), // 圆角矩形边界的圆角半径
          child: Container(
            width: 150,
            height: 50,
            alignment: Alignment.center,
            color: Colors.blue,
            child: const Text(
              'Click Me',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
