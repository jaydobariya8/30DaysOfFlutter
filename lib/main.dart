import 'package:flutter/material.dart';
import 'package:flutter_application/Pages/login_page.dart';
import 'package:flutter_application/utils/routes.dart';
import 'Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            fontFamily: GoogleFonts.lato().fontFamily,
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(decorationColor: Colors.black),
            )),
        darkTheme:
            ThemeData(brightness: Brightness.dark, primarySwatch: Colors.green),
        initialRoute: MyRoutes.homeRoute,
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
        });
  }
}
