import 'package:flutter/material.dart';

class NestedScrollViewWidget extends StatefulWidget {
  const NestedScrollViewWidget({super.key});

  @override
  State<NestedScrollViewWidget> createState() => _NestedScrollViewWidgetState();
}

class _NestedScrollViewWidgetState extends State<NestedScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NestedScrollView'),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: const Text(
                    'NestedScrollView Example',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  background: Image.network(
                    'https://via.placeholder.com/350x150',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView.builder(
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
