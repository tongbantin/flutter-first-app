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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Text("01"), Text("02"), Text("03"),Image(image: NetworkImage("http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcS-lrRUd1IHPGjT4Z7PZJh3BfB4deUXE_A95Syki1EFR1KHOnUrau0pSMD3SOuu"))],
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
