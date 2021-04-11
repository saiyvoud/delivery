import 'package:flutter/material.dart';

import 'btnregister.dart';
import 'iddriver.dart';
import 'txtcall.dart';
import 'txtcomfirm.dart';
import 'txtfullname.dart';
import 'txtpassword.dart';

class BodySingup extends StatefulWidget {
  @override
  _BodySingupState createState() => _BodySingupState();
}

class _BodySingupState extends State<BodySingup> {
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // MaterialPageRoute route = MaterialPageRoute(
            //   builder: (BuildContext context) => Login(),
            // );
            // Navigator.of(context).push(route);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              buildText(),
              SizedBox(height: 50),
              IDDriver(),
              SizedBox(height: 30),
              Fullname(),
              SizedBox(height: 30),
              Call(),
              SizedBox(height: 50),
              Password(),
              SizedBox(height: 30),
              Comfirm(),
              SizedBox(height: 50),
              ButtonRegister(),
              SizedBox(height: 20),
              buildif(),
            ],
          ),
        ),
      ),
    );
  }

  Text buildText() {
    return Text(
      'ລົງທະບຽນ',
      style: TextStyle(fontSize: 22.0, color: Colors.black),
    );
  }

  Widget buildif() {
    return Column(
      children: [
        Text(
          'ເມື່ອທ່ານກົດຕົກລົງ ແມ່ນໝາຍເຖິງທ່ານໄດ້ຍອມຮັບເງື່ອນໄຂ',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(height: 5),
        Text(
          'ແລະ ກົດລະບຽບໃນການໃຫ້ບໍລິການຂອງພວກເຮົາ',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(height: 8),
        InkWell(
          child: Text(
            'ເງື່ອນໄຂການໃຫ້ບໍລິການແລະນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
