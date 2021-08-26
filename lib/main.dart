import 'package:flutter/material.dart';
import 'FoodMenu.dart';
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
  var menu = [
    FoodMenu("Shrimp", "500","assets/images/01.jpg"),
    FoodMenu("Fried rice", "100","assets/images/02.jpg"),
    FoodMenu("Somtum", "60","assets/images/03.jpg")
  ];

//แสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(leading: Image.asset("${menu[index].img}"), title: Text("${menu[index].name}",style: head,)
            ,subtitle: Text("${menu[index].price} บาท"),);
          }),
    );
  }
  var head = TextStyle(fontSize: 30);
}
