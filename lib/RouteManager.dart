import 'package:flutter/material.dart';

void main()=> runApp(new RouteManagerPage());

class RouteManagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "路由管理",
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      initialRoute: "/",
      routes: {
        "2_page":(context)=>RouteManagerNextPage(),
        "3_page":(context)=>RouteManagerThirdPage(),
        "/":(context)=>RouteManagerHomePage()
      },
    );
  }
}

class RouteManagerHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RouteManagerState();
  }
}

class RouteManagerState extends State<RouteManagerHomePage>{
  String arguments = "";
  @override
  Widget build(BuildContext context) {
    setState(() {
      arguments = ModalRoute.of(context).settings.arguments;
      print('$arguments');
    });
    return Scaffold(
        appBar: AppBar(
          title: Text("路由管理"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(onPressed: ()=>{
                Navigator.pushNamed(context, "2_page")
              },
                child: Text("跳转"),),
              Visibility(
                  visible: arguments!=null,
                  child: Text("$arguments"))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        )
    );
  }


}

class RouteManagerThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三页"),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(onPressed:()=>{
          _go(context)
        },
        child: Text("下一页"),),
      )
    );
  }

   _go(BuildContext context) {
    Navigator.pushNamed(context, "/",arguments: "第三页发送的信息");
  }
}

class RouteManagerNextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二页"),
        centerTitle: true,
      ),
      body: Center(
          child:  Column(
            children: <Widget>[
              RaisedButton(onPressed: ()=>{
                Navigator.pushNamed(context, "3_page")
              },
                child: Text("下一页"),)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
      ),
    );
  }
}