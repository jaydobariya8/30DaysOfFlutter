import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog app"),
      ),
      body: Center(
        child: Container(
          child: Text("show catelog"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
