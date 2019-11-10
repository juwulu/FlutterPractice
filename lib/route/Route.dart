import 'package:flutter/material.dart';

void main() => runApp(RouteApp());

class RouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "route",
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由管理"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return NewRoutePage();
                    },
                    maintainState: false));
          },
          child: Text("跳转到下一个路由"),
        ),
      ),
    );
  }
}

class NewRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("新路由"),
      ),
      body: Center(
        child: Text("这是一个新界面"),
      ),
    );
  }
}
