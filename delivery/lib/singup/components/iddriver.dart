import 'package:flutter/material.dart';

class IDDriver extends StatefulWidget {
  @override
  _IDDriverState createState() => _IDDriverState();
}

class _IDDriverState extends State<IDDriver> {
  String id;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            hintText: 'ລະຫັດໄດເວີ',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          validator: (String value) {
            if (value.length <= 8) {
              return 'charecter not 8';
            } else {
              return null;
            }
          },
          onSaved: (String value) {
            id = value.trim();
          },
        ),
      ),
    );
  }
}
