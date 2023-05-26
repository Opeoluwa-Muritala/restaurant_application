import 'package:flutter/material.dart';
import 'package:restaurant_application/screens/create.dart';
import 'package:restaurant_application/screens/home.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(226, 247, 246, 246),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
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
                  height: 100,
                  width: MediaQuery.of(context).size.width * .9,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 218, 172, 156),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Username :',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 25,
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.brown),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 233, 224, 224)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Password :',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            height: 25,
                            width: 200,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.brown),
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor:
                                      const Color.fromARGB(255, 233, 224, 224)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Home();
                          }));
                        },
                        child: Container(
                          height: 28,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: const Color.fromARGB(255, 133, 73, 51)),
                          child: const Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ontext) {
                            return const Signup();
                          }));
                        },
                        child: const SizedBox(
                          height: 28,
                          child: Center(
                            child: Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
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
        ),
      ),
    );
  }
}
