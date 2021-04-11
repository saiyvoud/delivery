import 'package:flutter/material.dart';

class Bodyhistory extends StatelessWidget {
  final String img, name, type, price, totalprice, qty;
  final DateTime time;
  final VoidCallback press;
  const Bodyhistory(
      {Key key,
      this.img,
      this.press,
      this.name,
      this.type,
      this.price,
      this.time,
      this.totalprice,
      this.qty})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SizedBox(
            width: 120,
            height: 100,
            child: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(img, fit: BoxFit.cover)),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
                Text(
                  type,
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    SizedBox(width: 20),
                    Text(
                      qty,
                      style: TextStyle(fontSize: 13, color: Colors.orange),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'ຈຳນວນ',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'ລາຄາລວມ',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    SizedBox(width: 30),
                    Text(
                      totalprice,
                      style: TextStyle(fontSize: 13, color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Text(
                '4/10/2021',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              SizedBox(height: 15),
              Text(
                '12:49 PM',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
