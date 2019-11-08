import 'package:flutter/material.dart';

void main() => runApp(TransmitApp());

class TransmitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(title: "dd", home: TransmitPage());
  }
}

class TransmitPage extends StatelessWidget {
  var result;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("路由传值"),
        ),
        body: RaisedButton(
          onPressed: () async {
            result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
              return NextPage(text: "第一界面传递的值");
            }));
            print(result);
          },
          child: Text("下一个界面"),
        ));
  }
}

class NextPage extends StatelessWidget {
  final String text;

  NextPage({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("接收界面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(text),
            RaisedButton(
              child: Text("返回"),
              onPressed: () {
                Navigator.pop(context, "我是返回值");
              },
            )
          ],
        ),
      ),
    );
  }
}
