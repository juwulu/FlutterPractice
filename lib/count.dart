import 'package:flutter/material.dart';

void main() => runApp(CountApp());

class CountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "多任务标题",
      home: CountPage(
        title: "计数器",
      ),
    );
  }
}

class CountPage extends StatefulWidget {
  final String title;

  CountPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return _CountPageState();
  }
}

class _CountPageState extends State<CountPage> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text("当前计数值：$_count"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }

  void _increment() {
    setState(() {
      _count++;
    });
  }
}
