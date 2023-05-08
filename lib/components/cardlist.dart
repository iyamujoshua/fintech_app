import 'package:fintech_app/utilities/themecolor.dart';
import 'package:flutter/material.dart';

import '../utilities/themestyle.dart';
import '../widget/credit_card.dart';

class cardlist extends StatefulWidget {
  const cardlist({super.key});

  @override
  State<cardlist> createState() => _cardlistState();
}

class _cardlistState extends State<cardlist> {
  List<creditcard> cardList = [
    creditcard(),
    creditcard(),
    creditcard(),
    creditcard(),
    creditcard(),
  ];

  int _currentCard = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChange(int index) {
    setState(() {
      _currentCard = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 32.0, left: 15.0, right: 15.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your cards", style: Themestyle.primaryTitle),
                Text(
                  "see more",
                  style: Themestyle.seeAll,
                )
              ],
            ),
          ),
          Container(
            height: 246.0,
            child: PageView.builder(
              itemCount: cardList.length,
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChange,
              itemBuilder: (context, index) => creditcard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < cardList.length; i++)
                  if (_currentCard == i)
                    DotIndicator(true)
                  else
                    DotIndicator(false)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DotIndicator extends StatefulWidget {
  final bool isActive;
  DotIndicator(this.isActive);

  @override
  State<DotIndicator> createState() => _DotIndicatorState();
}

class _DotIndicatorState extends State<DotIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 8.0,
        height: 8.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: widget.isActive ? ThemeColor.black : ThemeColor.grey,
        ),
      ),
    );
  }
}
