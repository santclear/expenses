import 'dart:math';

import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {

  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: 't1',
      title: 'New Running Shoes',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
        id: 't2',
        title: 'Electricity bill',
        value: 211.30,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Electricity bill #1',
        value: 211.30,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Electricity bill #2',
        value: 211.30,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Electricity bill #3',
        value: 211.30,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Electricity bill #4',
        value: 211.30,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Electricity bill #5',
        value: 211.30,
        date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Electricity bill #6',
        value: 211.30,
        date: DateTime.now()),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
