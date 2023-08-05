import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  const AnimatedListWidget({super.key});

  @override
  State<AnimatedListWidget> createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _items = ['Item 1', 'Item 2', 'Item 3'];

  void _addItem() {
    int newIndex = _items.length;
    _items.insert(newIndex, 'Item $newIndex');
    _listKey.currentState!.insertItem(newIndex);
  }

  void _removeItem(int index) {
    String removedItem = _items.removeAt(index);
    _listKey.currentState!.removeItem(
      index,
      (context, animation) => _buildItem(removedItem, animation),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedList Example')),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return _buildItem(_items[index], animation);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => _removeItem(_items.indexOf(item)),
        ),
      ),
    );
  }
}
