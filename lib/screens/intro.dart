import 'package:flutter/material.dart';
import 'package:restaurant_application/autenticate/signin.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2000), (() {}));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const Signin();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.brown.shade600),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.fastfood,
              color: Colors.white,
              size: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Taste Me",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 50),
            ),
          ],
        ),
      ),
    );
  }
}
