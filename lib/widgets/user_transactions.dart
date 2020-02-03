import './transaction_list.dart';
import './new_transaction.dart';
import 'package:flutter/material.dart';
import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _userTransactions = [
    Transactions(id: 't1', title: 'Food', amount: 300, date: DateTime.now()),
    Transactions(id: 't2', title: 'Shoes', amount: 3000, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
