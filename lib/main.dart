import 'package:coffeeappui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    );
  }
}

