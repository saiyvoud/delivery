import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  String call;
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
            hintText: 'ເບີໂທ (8ໂຕເລກ)',
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
            call = value.trim();
          },
        ),
      ),
    );
  }
}
