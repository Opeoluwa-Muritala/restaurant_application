import 'package:flutter/material.dart';

import 'package:restaurant_application/constants/foods.dart';

import '../constants/tabcontent.dart';
import '../models/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final placeholder = const Opacity(
    opacity: 0,
    child: IconButton(
      onPressed: null,
      icon: Icon(Icons.no_cell),
    ),
  );
  int index = 0;
  void currentpage(value) {
    setState(() {
      index = value;
    });
  }

  static List<item> food = [
    item(
        name: 'Spagetti',
        prize: '\$25',
        img: 'assets/spag.jpg',
        description: ''),
    item(
        name: 'Macaroni',
        prize: '\$25',
        img: 'assets/macaroni.jpg',
        description: ''),
    item(
        name: 'Rosted chicken',
        prize: '\$35',
        img: 'assets/chicken.jpg',
        description: ''),
    item(
        name: 'Milkshake',
        prize: '\$10',
        img: 'assets/milkshake.jpg',
        description: ''),
    item(
        name: 'Grilled chicken',
        prize: '\$35',
        img: 'assets/chik.jpg',
        description: ''),
    item(
        name: 'Burgar',
        prize: '\$15',
        img: 'assets/bugar.jpg',
        description: ''),
    item(
        name: 'Turky', prize: '\$45', img: 'assets/turky.png', description: ''),
  ];
  List display_list = List.from(food);
  void searchfood(String value) {
    setState(() {
      display_list = food
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset(
            "assets/menu.png",
            color: Colors.brown,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.fastfood,
              color: Colors.brown,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text("Taste Me",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.brown,
                    fontSize: 20)),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.brown,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: Colors.grey.shade300,
                  spreadRadius: 2,
                  offset: const Offset(
                    -2,
                    2,
                  ),
                ),
              ]),
              child: TextField(
                onChanged: (value) {
                  searchfood(value);
                },
                decoration: InputDecoration(
                  hintText: 'Search food',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.white)),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                tabcontent(
                  title: "Combo meal",
                  isactive: true,
                  onTap: () {},
                ),
                tabcontent(
                  title: "Chicken",
                  onTap: () {},
                ),
                tabcontent(
                  title: "Drinks",
                  onTap: () {},
                ),
                tabcontent(
                  title: "Snacks & Sides",
                  onTap: () {},
                ),
              ],
            ),
          ),
          Row(
            children: [],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: currentpage,
        elevation: 0,
        currentIndex: index,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.brown,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
