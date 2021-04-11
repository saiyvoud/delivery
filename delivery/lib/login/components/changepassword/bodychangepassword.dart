import 'package:delivery/login/login_screen.dart';
import 'package:flutter/material.dart';

class Bodychangepassword extends StatefulWidget {
  @override
  _BodychangepasswordState createState() => _BodychangepasswordState();
}

class _BodychangepasswordState extends State<Bodychangepassword> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'ປ່ຽນລະຫັດຜ່ານໃໝ່',
            style: TextStyle(fontSize: 22.0, color: Colors.black),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  hintStyle: TextStyle(
                      color: Color.alphaBlend(Colors.black, Colors.white)),
                  hintText: 'ລະຫັດຜ່ານໃໝ່',
                ),
                validator: (String value) {
                  if (value.length < 6) {
                    return 'charecter not 6';
                  } else {
                    return null;
                  }
                },
                onSaved: (String value) {},
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  hintStyle: TextStyle(
                      color: Color.alphaBlend(Colors.black, Colors.white)),
                  hintText: 'ລະຫັດຜ່ານຢືນຢັນ',
                ),
                onSaved: (String value) {},
              ),
            ),
          ),
          SizedBox(height: 40),
          InkWell(
            onTap: () {
              print('You click Upload');
              MaterialPageRoute route = MaterialPageRoute(
                builder: (BuildContext context) => Login(),
              );
              Navigator.of(context).push(route);
            },
            child: Container(
              width: 370.0,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.greenAccent[700], Colors.green],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                child: Text(
                  'ປ່ຽນລະຫັດຜ່ານ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
