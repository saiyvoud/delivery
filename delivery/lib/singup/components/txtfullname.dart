import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fullname extends StatefulWidget {
  @override
  _FullnameState createState() => _FullnameState();
}

class _FullnameState extends State<Fullname> {
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            hintText: 'ຊື່ ແລະ ນາມສະກຸນ',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          validator: (String value) {
            if (value.isEmpty) {
              return 'ໂປຣປ້ອນຊື່ທ່ານ';
            } else {
              return null;
            }
          },
          onSaved: (String value) {
            name = value.trim();
          },
        ),
      ),
    );
  }
}
