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
//แสดงผล
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              height: 120,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Balance ",
                    style: head,
                  ),
                  Expanded(
                    child: Text(
                      "10000",
                      style: detail,
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(30)),
              height: 100,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Income ",
                    style: head,
                  ),
                  Expanded(
                    child: Text(
                      "15000",
                      style: detail,
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(30)),
              height: 100,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Expense ",
                    style: head,
                  ),
                  Expanded(
                    child: Text(
                      "50000",
                      style: detail,
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(30)),
              height: 100,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Pay bill ",
                    style: head,
                  ),
                  Expanded(
                    child: Text(
                      "5000",
                      style: detail,
                      textAlign: TextAlign.right,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  var head = TextStyle(
    fontSize: 30,
    color: Colors.white,
  );
  var detail = TextStyle(
    fontSize: 30,
    color: Colors.white,
  );
}
