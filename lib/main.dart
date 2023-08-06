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
import 'widget/SliverToBoxAdapter.dart';

import 'Animation/AlignTransition.dart';
import 'Animation/AnimatedBuilder.dart';
import 'Animation/AnimatedCrossFade.dart';
import 'Animation/AnimatedDefaultTextStyle.dart';
import 'Animation/AnimatedListState.dart';
import 'Animation/AnimatedModalBarrier.dart';
import 'Animation/AnimatedOpacity.dart';
import 'Animation/AnimatedPhysicalModel.dart';
import 'Animation/AnimatedPositioned.dart';
import 'Animation/AnimatedSize.dart';
import 'Animation/AnimatedSwitcher.dart';
import 'Animation/AnimatedWidget.dart';
import 'Animation/AnimatedTheme.dart';
import 'Animation/DecoratedBoxTransition.dart';
import 'Animation/FadeTransition.dart';
import 'Animation/Hero.dart';
import 'Animation/PositionedTransition.dart';
import 'Animation/PageRouteBuilder.dart';
import 'Animation/RotationTransition.dart';
import 'Animation/ScaleTransition.dart';
import 'Animation/SizeTransition.dart';
import 'Animation/SlideTransition.dart';
import 'Animation/Transform.dart';

import 'router.dart';

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
      routes: {
        '/detail': (context) => DetailPage(),
      },
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
        body: TransformExample());
  }
}
