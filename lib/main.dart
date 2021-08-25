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
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text("01"), Text("02"), Text("0sdsdsd"),Image(image: NetworkImage("http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcS-lrRUd1IHPGjT4Z7PZJh3BfB4deUXE_A95Syki1EFR1KHOnUrau0pSMD3SOuu"))],
          ),
        ),
      );
  }
}