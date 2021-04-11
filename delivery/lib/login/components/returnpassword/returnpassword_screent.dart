import 'package:delivery/login/components/comfirm/comfirm_screen.dart';
import 'package:flutter/material.dart';

import '../../login_screen.dart';

class ReturnPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (BuildContext context) => Login(),
              );
              Navigator.of(context).push(route);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'ກູ້ຄືນລະຫັດຜ່ານ',
          style: TextStyle(
              fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: BodyReturnpassword(),
    );
  }
}

class BodyReturnpassword extends StatefulWidget {
  @override
  _BodyReturnpasswordState createState() => _BodyReturnpasswordState();
}

class _BodyReturnpasswordState extends State<BodyReturnpassword> {
  String call;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'ກະລຸນາໃສ່ເບີໂທເພື່ອກູ້ລະຫັດຜ່ານຂອງທ່ານ.',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: '9xxxxxxx',
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
            ),
            SizedBox(height: 30),
            InkWell(
              onTap: () {
                print('You click Upload');
                MaterialPageRoute route = MaterialPageRoute(
                  builder: (BuildContext context) => Confirmcall(),
                );
                Navigator.of(context).push(route);
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 180, vertical: 13),
                  child: Text(
                    'ສົ່ງ',
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
      ),
    );
  }
}
