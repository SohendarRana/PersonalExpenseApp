import 'package:flutter/material.dart';
import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'ps5', amount: 999, date: DateTime.now()),
    Transaction(id: 't2', title: 'xbox', amount: 899, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Card(
                color: Colors.blue,
                child: Text(
                  "CHART!",
                  textAlign: TextAlign.center,
                ),
                elevation: 5,
              ),
            ),
            Card(
              child: Text("another text!"),
            )
          ],
        ));
  }
}
