import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextAndFont extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('helloWorld',
        ),
        Text('helloWorld'*10,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text('helloWorld',
          textScaleFactor: 2,
          textWidthBasis: TextWidthBasis.longestLine,
        ),
        Text.rich(
            TextSpan(
              children:[
                TextSpan(
                  text: "网址",
                ),
                TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                )
              ]
            ),
        ),
      ],

    );
  }
}