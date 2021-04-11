import 'package:delivery/message/message_screen.dart';
import 'package:delivery/oder/order_screen.dart';
import 'package:delivery/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'icon.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _children = [
    Order(),
    Message(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.greenAccent[700],
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              cart,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              cart1,
              height: 20,
              width: 20,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text(
              'ອໍເດີ',
              style: TextStyle(fontSize: 15),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              message,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              message,
              height: 20,
              width: 20,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text(
              'ຂໍ້ຄວາມ',
              style: TextStyle(fontSize: 15),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              user,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              user,
              height: 20,
              width: 20,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text(
              'ຂໍ້ຄວາມ',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
