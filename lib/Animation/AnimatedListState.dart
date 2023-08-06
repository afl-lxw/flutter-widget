import 'package:flutter/material.dart';

class AnimatedListStateWidget extends StatefulWidget {
  const AnimatedListStateWidget({super.key});

  @override
  State<AnimatedListStateWidget> createState() =>
      _AnimatedListStateWidgetState();
}

class _AnimatedListStateWidgetState extends State<AnimatedListStateWidget> {
  List<int> _items = [1, 2, 3];
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    int newItem = _items.length + 1;
    _items.add(newItem);
    _listKey.currentState?.insertItem(_items.length - 1);
  }

  void _removeItem() {
    int removedItem = _items.length;
    _listKey.currentState?.removeItem(
      _items.length - 1,
      (context, animation) => buildRemovedItem(removedItem, animation),
    );
    _items.removeAt(_items.length - 1);
  }

  Widget buildRemovedItem(int item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text('Item $item'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedListState Example')),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return buildListItem(_items[index], animation);
        },
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _addItem,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _removeItem,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }

  Widget buildListItem(int item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text('Item $item'),
      ),
    );
  }
}
