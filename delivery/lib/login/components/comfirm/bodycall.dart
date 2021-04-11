import 'package:flutter/material.dart';

class BoDycall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'ການຢືນຢັນເບີໂທ',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                'ກະລຸນາປ້ອນລະຫັດ PIN ທີ່ສົ່ງໄປ',
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              //
              //
              SizedBox(height: 10),
              Bodyconfirmcall(),
              SizedBox(height: 50),
              Text(
                'ທ່ານໄດ້ຮັບລະຫັດຫຼືບໍ່ ?',
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'ສົ່ງລະຫັດໃໝ່ອີກຄັ້ງ',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Bodyconfirmcall extends StatefulWidget {
  @override
  _BodyconfirmcallState createState() => _BodyconfirmcallState();
}

class _BodyconfirmcallState extends State<Bodyconfirmcall> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();

    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: TextFormField(
              focusNode: pin2FocusNode,
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: TextFormField(
              focusNode: pin3FocusNode,
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            height: 60,
            child: TextFormField(
              focusNode: pin4FocusNode,
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
              onTap: () {
                // MaterialPageRoute route = MaterialPageRoute(
                //   builder: (BuildContext context) => Changepassword(),
                // );
                // Navigator.of(context).push(route);
              },
            ),
          ),
        ],
      ),
    );
  }
}
