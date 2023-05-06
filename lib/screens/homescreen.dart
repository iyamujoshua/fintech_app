import 'package:fintech_app/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:fintech_app/main.dart';
import 'package:flutter_svg/svg.dart';

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Homescreen(),
      Homescreen(),
      Homescreen(),
      Homescreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: onTabTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("asset/house.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("asset/house.png"),
            label: " Transaction",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("asset/house.png"),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("asset/house.png"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
