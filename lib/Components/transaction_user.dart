import 'package:flutter/material.dart';
import 'package:expense/Models/transaction.dart';
import 'package:expense/Components/transactions_list.dart';
import 'package:expense/Components/transacton_form.dart';

class TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.90,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionsList(_transactions), TransactionForm()],
    );
  }
}

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  TransactionUserState createState() => TransactionUserState();
}
