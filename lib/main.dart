import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First App"),
        ),
        body: Column(
          children: [
            Text("First Question"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => print("Answer 1"),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
