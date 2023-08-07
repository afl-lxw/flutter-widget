import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class Todo {
  final String title;
  final String description;
  final bool isDone;

  Todo({
    required this.title,
    required this.description,
    this.isDone = false,
  });
}

class _ListViewWidgetState extends State<ListViewWidget> {
  final List<Todo> todos = [
    Todo(
      title: '完成Flutter教程',
      description: '学习如何构建Flutter应用。',
    ),
    Todo(
      title: '健身',
      description: '去健身房锻炼身体。',
    ),
    Todo(
      title: '阅读',
      description: '读一本有趣的书。',
      isDone: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(todos[index].title),
              background: Container(
                color: Colors.red,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
              onDismissed: (direction) {
                // 在这里执行删除操作
                todos.removeAt(index);
              },
              child: _ListViewTite(index),
            );
          },
        ));
  }

  ListTile _ListViewTite(int index) {
    return ListTile(
      leading: const Icon(Icons.check_circle_outline),
      title: Text(
        todos[index].title,
        style: TextStyle(
          decoration: todos[index].isDone
              ? TextDecoration.lineThrough
              : TextDecoration.none,
          color: todos[index].isDone ? Colors.grey : Colors.black,
        ),
      ),
      subtitle: Text(todos[index].description),
      trailing: const Icon(Icons.more_vert),
      isThreeLine: true,
      dense: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      selectedColor: Colors.blue.withOpacity(0.2),
      iconColor: Colors.green,
      textColor: const Color.fromARGB(255, 87, 87, 87),
      contentPadding: const EdgeInsets.all(10),
      enabled: true,
      onTap: () {
        // 处理点击事件
      },
      onLongPress: () {
        // 处理长按事件
      },
      selected: false,
      focusColor: Colors.yellow,
      hoverColor: Colors.orange,
      focusNode: FocusNode(),
      autofocus: false,
      tileColor: todos[index].isDone ? Colors.grey.withOpacity(0.1) : null,
      selectedTileColor: Colors.blue.withOpacity(0.5),
      enableFeedback: true,
      horizontalTitleGap: 15,
      minVerticalPadding: 15,
      minLeadingWidth: 15,
    );
  }
}
