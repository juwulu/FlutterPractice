import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> list = List<String>.generate(30, (index)=> "列表项 ${index+1}");
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("滑动删除列表"),
      ),
      body: ListView.builder(itemCount:list.length ,
      itemBuilder: (context,index){
        final item = list[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (dirction){
            list.removeAt(index);
            Scaffold.of(context).showSnackBar(SnackBar(content: Text("$item 被删除了")));
          },
          child: ListTile(
            title: Text("$item"),
          ),
        );
      }),
    );
  }
 
}