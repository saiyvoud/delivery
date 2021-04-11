import 'package:flutter/material.dart';

import 'bodycall.dart';

class Confirmcall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            // MaterialPageRoute route = MaterialPageRoute(
            //   builder: (BuildContext context) => ReturnPassword(),
            // );
            // Navigator.of(context).push(route);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: BoDycall(),
    );
  }
}
