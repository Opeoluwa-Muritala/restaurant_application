import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_application/constants/btn.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/up.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width * .97,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color.fromARGB(220, 231, 149, 119),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Getting started',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Create an account to enjoy your meal',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Username ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        SizedBox(
                          height: 25,
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius: BorderRadius.circular(20.0)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color.fromARGB(255, 233, 224, 224)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Phone number ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 25,
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius: BorderRadius.circular(20.0)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color.fromARGB(255, 233, 224, 224)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Email Address ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        SizedBox(
                          height: 25,
                          width: 200,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius: BorderRadius.circular(20.0)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color.fromARGB(255, 233, 224, 224)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Password ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        SizedBox(
                          height: 25,
                          width: 200,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius: BorderRadius.circular(20.0)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color.fromARGB(255, 233, 224, 224)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Confirm Password ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          height: 25,
                          width: 200,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius: BorderRadius.circular(20.0)),
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Color.fromARGB(255, 233, 224, 224)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Btn(),
                    SizedBox(
                      height: 10,
                    ),
                    //sign up options
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Sign in with google");
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage('assets/google.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Sign in with facebook");
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage('assets/facebook.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Sign in with twitter");
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage('assets/twitter.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("Sign in with linkedin");
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage('assets/linkedn.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
