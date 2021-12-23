import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpenseRecord extends GetView {
  final DateTime dateTime;
  final int? credit;
  final int? debit;

  ExpenseRecord({
    required this.dateTime,
    this.credit,
    this.debit,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            // Text
            TextSpan(text: '03 April 2021, ', children: [
              TextSpan(
                text: 'Saturday',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              )
            ]),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Credit
              SizedBox(
                width: (size.width * 0.1),
                child: credit != null ? Text('$credit', style: TextStyle(color: Colors.green)) : SizedBox.shrink(),
              ),
              // Debit
              SizedBox(
                width: (size.width * 0.1),
                child: debit != null ? Text('$debit', style: TextStyle(color: Colors.red)) : SizedBox.shrink(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
