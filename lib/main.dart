import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: Center(
          child: Text(
            "Hello flutterss sdass",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
