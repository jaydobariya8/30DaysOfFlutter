import 'package:flutter/material.dart';
import 'package:flutter_application/home_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return home_page();
  }
}
