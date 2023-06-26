import 'package:flutter/material.dart';
import 'package:flutter_application/Pages/login_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: HomePage(),
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme:
            ThemeData(brightness: Brightness.dark, primarySwatch: Colors.green),
        initialRoute: "/login",
        routes: {
          "/": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        });
  }
}
