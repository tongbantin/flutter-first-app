import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "My app",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Text("Hello flutter"),
    ),
  );
  runApp(app);
}
