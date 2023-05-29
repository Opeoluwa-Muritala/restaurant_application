import 'package:flutter/material.dart';

class Foods extends StatelessWidget {
  final String prize;
  final String img;
  const Foods({Key? key, required this.prize, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 150,
        width: 150,
        child: Stack(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                GestureDetector(
                  onTap: (() {}),
                  child: Container(
                    child: Center(
                      child: Text(
                        prize.toString(),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 10, 219, 31)),
                      ),
                    ),
                    height: 20,
                    width: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Colors.transparent),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
