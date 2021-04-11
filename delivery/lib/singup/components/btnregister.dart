import 'package:flutter/material.dart';

class ButtonRegister extends StatefulWidget {
  @override
  _ButtonRegisterState createState() => _ButtonRegisterState();
}

class _ButtonRegisterState extends State<ButtonRegister> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('You click Upload');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      child: Container(
        width: 390.0,
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.greenAccent[700], Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.topRight),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
          child: Text(
            'ລົງທະບຽນ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
