import 'package:delivery/components/image.dart';
import 'package:delivery/oder/components/history.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Bodyhistory(
              img: apple,
              name: 'ໝາກແອັບເປີ້ນ',
              type: 'ປອດສານ',
              price: '15,000 LAK/kg',
              qty: '3',
              totalprice: '45,000 LAK',
            ),
            Divider(),
            Bodyhistory(
              img: pine_apple,
              name: 'ໝາກນັດ',
              type: 'ປອດສານ',
              price: '20,000 LAK/kg',
              qty: '5',
              totalprice: '100,000 LAK',
            ),
            Divider(),
            Bodyhistory(
              img: cabbage,
              name: 'ຜັກກາດຫໍ',
              type: 'ປອດສານ',
              price: '15,000 LAK/kg',
              qty: '4',
              totalprice: '60,000 LAK',
            ),
            Divider(),
            Bodyhistory(
              img: orange,
              name: 'ໝາກກ້ຽງ',
              type: 'ປອດສານ',
              price: '15,000 LAK/kg',
              qty: '2',
              totalprice: '30,000 LAK',
            ),
          ],
        )
      ],
    );
  }
}
