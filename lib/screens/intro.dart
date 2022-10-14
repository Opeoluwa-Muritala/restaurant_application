import 'package:flutter/material.dart';
import 'package:restaurant_application/screens/in.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/up.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/turky.png',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rest.png',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/down.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Color.fromARGB(255, 182, 164, 2),
        focusColor: Colors.grey,
        backgroundColor: Color.fromARGB(255, 252, 210, 84),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Signin();
          }));
        },
        child: Icon(
          Icons.arrow_forward,
          size: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}
