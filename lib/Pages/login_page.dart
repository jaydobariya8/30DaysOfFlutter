import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "asset/images/login_main.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 2.0,
            ),
          ],
        ));
  }
}
