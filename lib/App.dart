import 'package:flutter/material.dart';
import 'package:flutter_app/text/TextAndFont.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter首页',
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: TextAndFont(),
      ),
    );
  }
}