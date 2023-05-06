import 'package:flutter/material.dart';
import 'package:fintech_app/screens/homescreen.dart';

import '../components/appbar.dart';
import '../components/cardlist.dart';
import '../components/recent.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Appbar(),
            cardlist(),
            recentransaction(),
          ],
        ),
      ),
    );
  }
}