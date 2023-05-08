import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  final String title;
  final String subTitle;
  final String price;
  final String letter;
  final Color color;
   TransactionCard({
    required this.color,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.letter
    });

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.0,
    );
  }
}
