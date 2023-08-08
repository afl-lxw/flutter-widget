import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatefulWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  State<SingleChildScrollViewWidget> createState() =>
      _SingleChildScrollViewWidgetState();
}

class _SingleChildScrollViewWidgetState
    extends State<SingleChildScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(30, (index) {
              return ListTile(
                title: Text('Item ${index + 1}'),
              );
            }),
          ),
        ));
  }
}
