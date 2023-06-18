import 'package:flutter/material.dart';

import '../models/model.dart';

class foodcard extends StatelessWidget {
  final String name;
  final String prize;
  final img;

  final void Function()? onTap;
  const foodcard({
    Key? key,
    required this.name,
    required this.prize,
    required this.img,
    required this.food,
    required this.onTap,
  }) : super(key: key);

  final List<Item> food;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 20,
                      color: Colors.grey.shade100)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    color: Colors.brown.shade100,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.brown),
                ),
                Text(
                  prize,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
