import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main()=>runApp(new PackageApp());

String _title = '包管理';

class PackageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          primaryColor: Colors.red
      ),
      home: PageHomePage(title:_title),
    );
  }
}

class PageHomePage extends StatefulWidget {

  final String title;
  PageHomePage({Key key,this.title});
  @override
  State<StatefulWidget> createState() {
    return PageHomePageState(title);
  }
}

class PageHomePageState extends State<PageHomePage> {
  var title;
  var word;

  PageHomePageState(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("$word"),
            RaisedButton(onPressed: ()=>
                _generateWord()
              ,
              child: Text('随机单词'),)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      )
    );
  }

  _generateWord() {
    setState(() {
      word = new WordPair.random();
    });
  }
}