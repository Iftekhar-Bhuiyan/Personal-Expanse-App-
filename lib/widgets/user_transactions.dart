import 'package:flutter/material.dart';
import 'package:flutter_prac_2/models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 'T1',
      title: 'New Shoes',
      amount: 43.21,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'Grocaries',
      amount: 103.21,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTittle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTittle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(
      () {
        _userTransaction.add(newTx);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
