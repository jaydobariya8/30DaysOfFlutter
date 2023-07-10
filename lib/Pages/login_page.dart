import 'package:flutter/material.dart';
import 'package:flutter_application/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeBtn = false;
  final _formkey = GlobalKey<FormState>();

  MoveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });
      await Future.delayed(Duration(milliseconds: 500));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                  "Welcome $name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 45.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter UserName", labelText: "UserName"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Canot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Canot be empty";
                          } else if (value.length < 6) {
                            return "Password must be 6 char";
                          }
                          return null;
                        },
                      ),

                      SizedBox(
                        height: 50,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeBtn ? 50 : 8),
                        child: InkWell(
                          onTap: () => MoveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: changeBtn ? 70 : 50,
                            width: changeBtn ? 70 : 150,
                            alignment: Alignment.center,
                            child: changeBtn
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                      color: Colors.white,
                                    ),
                                  ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //       minimumSize: Size(150, 50),
                      //       textStyle: TextStyle(
                      //           fontSize: 18, fontWeight: FontWeight.bold)),
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
