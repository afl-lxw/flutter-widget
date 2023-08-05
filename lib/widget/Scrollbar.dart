import 'package:flutter/material.dart';

class ScrollbarWidget extends StatefulWidget {
  const ScrollbarWidget({super.key});

  @override
  State<ScrollbarWidget> createState() => _ScrollbarWidgetState();
}

class _ScrollbarWidgetState extends State<ScrollbarWidget> {
  final List<String> items = List.generate(30, (index) => 'Item ${index + 1}');
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
