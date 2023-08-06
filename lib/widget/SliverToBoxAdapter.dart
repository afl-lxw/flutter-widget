import 'package:flutter/material.dart';

class SliverToBoxAdapterWidget extends StatefulWidget {
  const SliverToBoxAdapterWidget({super.key});

  @override
  State<SliverToBoxAdapterWidget> createState() =>
      _SliverToBoxAdapterWidgetState();
}

class _SliverToBoxAdapterWidgetState extends State<SliverToBoxAdapterWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose(); // 释放内存
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(16),
            child: const Text(
              'Horizontal Scrollable Content',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverPersistentHeader(
          delegate: MySliverPersistentHeaderDelegate(),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  color: Colors.blue,
                  margin: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const TabBar(
                  tabs: [
                    Tab(text: 'Tab 1'),
                    Tab(text: 'Tab 2'),
                    Tab(text: 'Tab 3'),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: TabBarView(
                    children: [
                      Container(
                        color: Colors.yellow,
                        child: Center(child: Text('tab1')),
                      ),
                      Container(
                        color: Colors.green,
                        child: Center(child: Text('tab2')),
                      ),
                      Container(
                        color: Colors.blue,
                        child: Center(child: Text('tab3')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.all(16),
            child: const Text(
              'Vertical Scrollable Content',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(title: Text('Item $index'));
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.grey,
      alignment: Alignment.center,
      child: const Text('Persistent Header',
          style: TextStyle(color: Colors.white)),
    );
  }

  @override
  double get maxExtent => 50.0;

  @override
  double get minExtent => 50.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
