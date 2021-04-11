import 'package:delivery/components/image.dart';
import 'package:delivery/profile/components/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/changepassword.dart';
import 'components/language.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(img1),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ProfileMenu(
                icon: 'images/icons/user.svg',
                text: "ແກ້ໄຂໂປຣໄຟ",
                press: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => Editprofile(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
              SizedBox(height: 20),
              ProfileMenu(
                icon: 'images/icons/changepassword.svg',
                text: "ປ່ຽນລະຫັດ",
                press: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => ChangePassWord(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
              SizedBox(height: 20),
              ProfileMenu(
                icon: 'images/icons/translation.svg',
                text: "ພາສາ",
                press: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => Languages(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
              SizedBox(height: 20),
              ProfileMenu(
                icon: 'images/icons/logout.svg',
                text: "ອອກຈາກລະບົບ",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key key, this.text, this.icon, this.press})
      : super(key: key);
  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Color(0xFFD8DEEE),
        onPressed: press,
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
              color: Colors.amber[700],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
