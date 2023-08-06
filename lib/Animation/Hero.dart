import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: Hero(
            tag: 'avatar',
            child: Image.asset('assets/images/home.png'),
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail')),
      body: Center(
        child: Hero(
          tag: 'avatar',
          child: Image.asset('assets/images/fifth.png'),
        ),
      ),
    );
  }
}
