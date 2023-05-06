// import 'package:flutter/material.dart';
// import '../utilities/themestyle.dart';

// class creditcard extends StatefulWidget {
//   const creditcard({super.key});

//   @override
//   State<creditcard> createState() => _creditcardState();
// }

// class _creditcardState extends State<creditcard> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Container(
//         height: 216,
//         width: 380,
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(20)
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("N500,000", style: Themestyle.cardMoney),
//                   IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_sharp),color: Colors.white,)
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../utilities/themestyle.dart';

class creditcard extends StatefulWidget {
  const creditcard({Key? key}) : super(key: key);

  @override
  State<creditcard> createState() => _creditcardState();
}

class _creditcardState extends State<creditcard> {
  bool isAmountHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 216,
        width: 380,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isAmountHidden
                        ? Text(
                            "********",
                            style: Themestyle.cardMoney,
                          )
                        : Text("N500,000", style: Themestyle.cardMoney),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isAmountHidden = !isAmountHidden;
                        });
                      },
                      icon: Icon(
                        isAmountHidden
                            ? Icons.visibility_off
                            : Icons.remove_red_eye_sharp,
                      ),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Joshua Iyamu",
                      style: Themestyle.cardDetails,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: Text(
                            "4199",
                            style: Themestyle.cardDetails,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0),
                          child: Text(
                            "5689",
                            style: Themestyle.cardDetails,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
