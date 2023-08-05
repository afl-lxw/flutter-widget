import 'package:flutter/material.dart';

import 'widget/ListView.dart';
import 'widget/GridView.dart';
import 'widget/SingleChildScrollView.dart';
import 'widget/PageView.dart';
import 'widget/RefreshIndicator.dart';
import 'widget/Scrollable.dart';
import 'widget/NestedScrollView.dart';
import 'widget/Scrollbar.dart';
import 'widget/ScrollConfiguration.dart';
import 'widget/NotificationListener.dart';
import 'widget/AnimatedList.dart';
import 'widget/CustomScrollView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: const CustomScrollViewWidget());
  }
}
