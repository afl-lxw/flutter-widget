import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  Future<void> _refreshData() async {
    // 模拟网络请求
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      items = List.generate(20, (index) => 'New Item ${index + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator'),
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
