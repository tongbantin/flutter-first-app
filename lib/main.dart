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
  var menus = [
    FoodMenu("Shrimp", "500", "assets/images/01.jpg"),
    FoodMenu("Fried rice", "100", "assets/images/02.jpg"),
    FoodMenu("Somtum", "60", "assets/images/03.jpg")
  ];

//แสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: ListView.builder(
          itemCount: menus.length,
          itemBuilder: (BuildContext context, int index) {
            var menu = menus[index];
            return ListTile(
              leading: Image.asset("${menu.img}"),
              title: Text(
                "${menu.name}",
                style: head,
              ),
              subtitle: Text("${menu.price} บาท"),
              onTap: () {
                print(menu.name);
              },
            );
          }),
    );
  }

  var head = TextStyle(fontSize: 30);
}
