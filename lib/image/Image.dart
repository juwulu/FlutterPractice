import 'package:flutter/material.dart';

void main()=>runApp(ImageApp());

class ImageApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图片管理',
      home: Scaffold(
        appBar: AppBar(
          title: Text("图片管理"),
        ),
        body: Center(
          child: Image.asset("images/icon.jpg",width: 100,height: 100,),
        )
      ),
      theme: ThemeData(
        primaryColor: Colors.amber
      ),
    );
  }
}