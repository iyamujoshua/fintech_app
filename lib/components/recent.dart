import 'package:fintech_app/utilities/themestyle.dart';
import 'package:flutter/material.dart';
import 'package:fintech_app/components/transactioncard.dart';
class recentransaction extends StatefulWidget {
  const recentransaction({super.key});

  @override
  State<recentransaction> createState() => _recentransactionState();
}

class _recentransactionState extends State<recentransaction> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom:16, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                       Text("Recent transaction", style: Themestyle.primaryTitle,),
            Text("See All", style: Themestyle.seeAll,),
              ],
            ),
          ),

          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.black,
                  letter: "B", 
                  title:"Bruce wayne", 
                  subTitle: "Buys a bank", 
                  price: "100,000,000",
                 ),

                 TransactionCard(
                  color: Colors.amber,
                  letter: "J", 
                  title:"Joshua iyamu", 
                  subTitle: "Wig funds", 
                  price: "- 50,000",
                 ),
                 TransactionCard(
                  color: Colors.purple,
                  letter: "F", 
                  title:"Tasha wayne", 
                  subTitle: "N/A", 
                  price: "- 50,000",
                 ),
                 TransactionCard(
                  color: Colors.green,
                  letter: "S", 
                  title:"SWAVE", 
                  subTitle: "sms", 
                  price: "- 50,000",
                 ),

              ],
            )
            )
        ],
      ),
    );
  }
}