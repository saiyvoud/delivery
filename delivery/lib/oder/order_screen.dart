import 'package:flutter/material.dart';

import 'components/history_screen.dart';
import 'components/my_order_screen.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Order',
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.greenAccent[700],
            tabs: [
              Text(
                'My Order',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Text(
                'History',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Myorder(),
            History(),
          ],
        ),
      ),
    );
  }
}
