import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({super.key});

  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBar'),
      ),
      body: _BtnWidget(),
    );
  }

  ButtonBar _BtnWidget() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Button 1')),
        OutlinedButton(onPressed: () {}, child: const Text('Button 2')),
        TextButton(onPressed: () {}, child: const Text('Button 3')),
      ],
    );
  }
}
