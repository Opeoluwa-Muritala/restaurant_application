import 'package:flutter/material.dart';
import 'package:restaurant_application/screens/create.dart';
import 'package:restaurant_application/screens/home.dart';
import 'package:restaurant_application/screens/in.dart';
import 'package:restaurant_application/screens/intro.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}
