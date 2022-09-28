import 'dart:html';

import 'package:flutter/material.dart';
import 'package:restaurant_application/screens/in.dart';

class Btn extends StatelessWidget {
  const Btn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (Context) {
          return Signin();
        }));
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.brown[700],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          'Sign up',
          style: TextStyle(fontSize: 23, color: Colors.white),
        )),
      ),
    );
  }
}
