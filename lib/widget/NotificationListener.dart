import 'package:flutter/material.dart';

class NotificationListenerWidget extends StatefulWidget {
  const NotificationListenerWidget({super.key});

  @override
  State<NotificationListenerWidget> createState() =>
      _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NotificationListener'),
        ),
        body: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            print(notification);
            if (notification is ScrollEndNotification) {
              print('Scroll ended');
            }
            return true;
          },
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ));
  }
}
