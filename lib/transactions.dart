import 'package:flutter/material.dart';

class Transactions {
  final String title;
  final double amount;
  final String id;
  final DateTime date;

  Transactions(
      {@required this.id,
      @required this.amount,
      @required this.date,
      @required this.title});
}
