import 'package:flutter/material.dart';

class Foods extends StatelessWidget {
  final prize;
  final img;
  Foods({Key? key, required this.prize, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
            child: Row(children: [
              Container(
                child: Center(
                  child: Text(
                    prize.toString(),
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 197, 195, 195)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
