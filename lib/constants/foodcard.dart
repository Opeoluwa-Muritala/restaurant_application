import 'package:flutter/material.dart';

import '../models/model.dart';

class foodcard extends StatelessWidget {
  const foodcard({
    Key? key,
    required this.food,
  }) : super(key: key);

  final List<item> food;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: food.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(20),
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
                      height: 100,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        food[index].img,
                      ),
                    ),
                    Text(
                      food[index].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.brown),
                    ),
                    Text(
                      food[index].prize,
                      style: const TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
