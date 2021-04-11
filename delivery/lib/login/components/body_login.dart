import 'package:delivery/components/bottombar.dart';
import 'package:delivery/components/icon.dart';
import 'package:delivery/singup/sing_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'returnpassword/returnpassword_screent.dart';

class BodyLogin extends StatefulWidget {
  @override
  _BodyLoginState createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  bool redEye = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          buildText(),
          SizedBox(height: 40),
          buildcall(),
          SizedBox(height: 20),
          buildpassword(),
          SizedBox(height: 20),
          buildforget(),
          SizedBox(height: 40),
          btnLogin(),
          SizedBox(height: 20),
          buildchose(),
          SizedBox(height: 20),
          buildfacebook(),
          SizedBox(height: 40),
          buildregister()
        ],
      ),
    );
  }

  Row buildchose() {
    return Row(
      children: [
        SizedBox(
          width: 30,
        ),
        Container(
          width: 130,
          child: Divider(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'ທາງເລືອກໃນການລ໋ອກອິນ',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 120,
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Container buildfacebook() {
    return Container(
      height: 55,
      width: 55,
      child: CircleAvatar(
        child: SvgPicture.asset(
          cart1,
          height: 30,
          width: 30,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Row buildregister() {
    return Row(
      children: [
        SizedBox(width: 120),
        Text(
          'ບໍ່ທັນເປັນສະມາຊິກ ?',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (BuildContext context) => SingUp(),
            );
            Navigator.of(context).push(route);
          },
          child: Text(
            'ລົງທະບຽນ',
            style: TextStyle(color: Colors.orange, fontSize: 18),
          ),
        ),
      ],
    );
  }

  Row buildforget() {
    return Row(
      children: [
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (BuildContext context) => ReturnPassword(),
              );
              Navigator.of(context).push(route);
            },
            child: Text(
              'ລືມລະຫັດຜ່ານ ?',
              style: TextStyle(fontSize: 13, color: Colors.orange[700]),
            ),
          ),
        ),
      ],
    );
  }

  Text buildText() {
    return Text(
      'ເຂົ້າສູ່ລະບົບ',
      style: TextStyle(
        fontSize: 22.0,
        color: Colors.black,
      ),
    );
  }

  InkWell btnLogin() {
    return InkWell(
      onTap: () {
        MaterialPageRoute route = MaterialPageRoute(
          builder: (BuildContext context) => Bottombar(),
        );
        Navigator.of(context).push(route);
      },
      child: Container(
        width: 390.0,
        height: 50,
        // ignore: deprecated_member_use
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
            'ເຂົ້າສູ່ລະບົບ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Container buildpassword() {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: TextField(
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
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            hintText: 'ລະຫັດຜ່ານ',
          ),
        ),
      ),
    );
  }

  Container buildcall() {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
            hintText: 'ເບີໂທລະສັບ ( 8 ໂຕເລກ)',
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: SvgPicture.asset(
                'images/icons/cart1.svg',
                height: 20,
                width: 20,
                color: Colors.orange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
