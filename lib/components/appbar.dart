import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 8.0 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Home",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w800,
            ),
          ),
    
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(
          Icons.person,
          size: 30.0,
          color: Colors.black,
        ),)
            ],
          )
        ],
      ),
    );
  }
}
