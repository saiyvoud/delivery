import 'package:delivery/components/image.dart';
import 'package:flutter/material.dart';

import 'myorder.dart';

class Myorder extends StatefulWidget {
  @override
  _MyorderState createState() => _MyorderState();
}

class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BodyOrder(
              img: apple,
              name: 'ໝາກແອັບເປີ້ນ',
              type: 'ປອດສານ',
              price: '15,000 LAK/kg',
            ),
            Divider(),
            BodyOrder(
              img: orange,
              name: 'ໝາກກ້ຽງ',
              type: 'ປອດສານ',
              price: '15,000 LAK/kg',
            ),
            Divider(),
            BodyOrder(
              img: pine_apple,
              name: 'ໝາກນັດ',
              type: 'ປອດສານ',
              price: '20,000 LAK/kg',
            ),
            Divider(),
            BodyOrder(
              img: cabbage,
              name: 'ຜັກກາດຫໍ',
              type: 'ປອດສານ',
              price: '18,000 LAK/kg',
            ),
          ],
        ),
      ],
    );
  }
}
