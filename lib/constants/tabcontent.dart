import 'package:flutter/material.dart';

class tabcontent extends StatelessWidget {
  final String title;
  final bool isactive;
  final Function()? onTap;
  const tabcontent(
      {Key? key,
      required this.onTap,
      this.isactive = false,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
        child: Column(
          children: [
            Text(title,
                style: isactive
                    ? const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black)
                    : const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey)),
            if (isactive)
              Container(
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown),
              )
          ],
        ),
      ),
    );
  }
}
