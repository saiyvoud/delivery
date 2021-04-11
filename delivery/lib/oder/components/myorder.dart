import 'package:delivery/components/image.dart';
import 'package:flutter/material.dart';

class BodyOrder extends StatelessWidget {
  final String img, name, type, price;
  final DateTime time;
  final VoidCallback press;
  const BodyOrder(
      {Key key,
      this.img,
      this.press,
      this.name,
      this.type,
      this.price,
      this.time})
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
                  style:
                      TextStyle(fontSize: 13, color: Colors.greenAccent[700]),
                ),
                Text(
                  price,
                  style: TextStyle(fontSize: 13, color: Colors.orange),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 20,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        // ignore: deprecated_member_use
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[700],
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                        child: Text(
                          'ຍອມຮັບ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 70,
                        height: 20,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        // ignore: deprecated_member_use
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                        child: Text(
                          'ປະຕິເສດ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Text(
                '11:00 AM 4/10/2021',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              SizedBox(height: 10),
              Container(
                width: 100,
                height: 60,
                child: Image.asset(map),
              )
            ],
          ),
        ),
      ],
    );
  }
}
