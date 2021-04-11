import 'package:delivery/components/image.dart';
import 'package:flutter/material.dart';

import 'components/carditem.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Message',
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CardItem(
                img: img1,
                text1: 'Saiyvoud',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img2,
                text1: 'Manyloud',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img3,
                text1: 'Beetwin',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img4,
                text1: 'Moukmany',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img1,
                text1: 'Chantaphone',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img1,
                text1: 'FC_ຂຸນແຜນ',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img2,
                text1: 'ເທິງຂ້ອຍສິມີຫຼາຍເມີຍແຕ່ກໍຮັກເຈົ້າ',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
              CardItem(
                img: img1,
                text1: 'ຂຸນຊ້າງຫ້າງຮັກ',
                text2: 'SOMNANONG',
                text3: 'BeeTwin Office',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
