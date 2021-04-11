import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem(
      {Key key,
      this.text1,
      this.text2,
      this.text3,
      this.icon,
      this.img,
      this.press})
      : super(key: key);
  final String text1, text2, text3, icon, img;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 100,
                height: 90,
                child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(img, fit: BoxFit.cover)),
                ),
              ),
            ),
          ],
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
                  text1,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  text3,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Day'),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.access_alarm,
                size: 18,
                color: Colors.orange,
              )
            ],
          ),
        )
      ],
    );
  }
}
