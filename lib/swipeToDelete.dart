import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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