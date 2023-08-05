import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('CustomScrollView Example'),
            background: Image.network(
              'https://via.placeholder.com/350x150',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
