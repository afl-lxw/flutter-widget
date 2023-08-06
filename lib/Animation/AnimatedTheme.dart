import 'package:flutter/material.dart';

class ThemeExample extends StatefulWidget {
  @override
  _ThemeExampleState createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Example',
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedTheme Example'),
        ),
        body: Center(
          child: AnimatedTheme(
            data: _isDarkMode ? ThemeData.light() : ThemeData.dark(),
            duration: Duration(seconds: 1),
            child: Container(
              width: 200,
              height: 200,
              color: Theme.of(context).primaryColor,
              alignment: Alignment.center,
              child: Text(
                'Hello, Theme!',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _toggleTheme,
          child: Icon(Icons.color_lens),
        ),
      ),
    );
  }
}
