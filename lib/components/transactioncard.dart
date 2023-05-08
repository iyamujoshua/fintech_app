import 'package:flutter/material.dart';
import 'package:fintech_app/components/recent.dart';
import '../utilities/themestyle.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Container(
        height: 62.0,
        width: 343,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(22.0)
                      ),
                      child: Center(
                        child: Text(
                        widget.letter,style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),),
                      ),
                    ),
                    SizedBox(width: 16.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                         style: 
                         Themestyle.otherDetailsPrimary,),
                        Text(
                          widget.subTitle,
                         style: 
                         Themestyle.otherDetailsSecondary,)
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(widget.price, style: TextStyle(
                      color: Colors.red
                    ),),
                    SizedBox(width: 4.0,),
                    Icon(Icons.keyboard_arrow_right),
     
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
