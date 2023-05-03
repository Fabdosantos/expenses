import 'dart:math';
import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 'T1',
      title: 'Tênis de corrida',
      value: 310.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Conta de Luz',
      value: 211.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T3',
      title: 'Celular',
      value: 211.46,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T4',
      title: 'Caixa de Som',
      value: 245.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T5',
      title: 'Notebook',
      value: 241.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T6',
      title: 'Conta de Internet',
      value: 311.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T7',
      title: 'Conta de Água',
      value: 411.75,
      date: DateTime.now(),
    ),
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
        TransactionsList(_transactions),
      ],
    );
  }
}
