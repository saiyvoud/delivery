import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String password, confirm;
  bool redEye = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.0,
      child: TextFormField(
        obscureText: redEye,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                redEye
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye_sharp,
                color: Color.alphaBlend(Colors.black, Colors.white),
              ),
              onPressed: () {
                setState(() {
                  redEye = !redEye;
                });
              }),
          prefixIcon: Icon(Icons.lock),
          hintStyle:
              TextStyle(color: Color.alphaBlend(Colors.black, Colors.white)),
          hintText: 'ລະຫັດຜ່ານ',
        ),
        validator: (String value) {
          if (value.length < 6) {
            return 'charecter not 6';
          } else {
            return null;
          }
        },
        onSaved: (String value) {
          password = value.trim();
        },
      ),
    );
  }
}
