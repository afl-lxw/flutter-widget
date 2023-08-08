import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoDatePickerExample(),
    );
  }
}

class CupertinoDatePickerExample extends StatefulWidget {
  @override
  _CupertinoDatePickerExampleState createState() =>
      _CupertinoDatePickerExampleState();
}

class _CupertinoDatePickerExampleState
    extends State<CupertinoDatePickerExample> {
  DateTime selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino DatePicker'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoDatePicker(
              mode: CupertinoDatePickerMode.dateAndTime,
              initialDateTime: selectedDateTime,
              onDateTimeChanged: (DateTime newDateTime) {
                setState(() {
                  selectedDateTime = newDateTime;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Selected Date and Time: $selectedDateTime',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
