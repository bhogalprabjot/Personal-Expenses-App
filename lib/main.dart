import 'package:flutter/material.dart';
import './transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(id: 't1', title: 'Food', amount: 300, date: DateTime.now()),
    Transactions(id: 't2', title: 'Shoes', amount: 3000, date: DateTime.now()),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Expenses"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Container(
                child: Text("Chart"),
              ),
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map(
              () {}.toList(),
            ),
          ),
        ],
      ),
    );
  }
}
