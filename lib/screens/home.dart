import 'package:flutter/material.dart';

import 'package:restaurant_application/constants/foods.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final placeholder = const Opacity(
    opacity: 0,
    child: IconButton(
      onPressed: null,
      icon: Icon(Icons.no_cell),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: const Color.fromARGB(255, 206, 205, 205),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/menu.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    'Resturant Name',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * .9,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/chik.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Foods(prize: "15 usd", img: 'assets/spag.jpg'),
                  Foods(prize: "15 usd", img: 'assets/macaroni.jpg'),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Foods(prize: "5 usd", img: 'assets/milkshake.jpg'),
                  Foods(prize: "10 usd", img: 'assets/bugar.jpg'),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Foods(prize: "25 usd", img: 'assets/turky.png'),
                  Foods(prize: "25 usd", img: 'assets/chicken.jpg'),
                ],
              ),
            ),
          ],
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 12,
        elevation: 0.0,
        color: const Color.fromARGB(255, 189, 187, 187),
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_outlined,
                      size: 40,
                    ),
                  ),
                  const Text(''),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_outlined,
                    size: 40,
                  ),
                ),
                const Text(''),
              ],
            ),
            placeholder,
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_outlined,
                    size: 40,
                  ),
                ),
                const Text(''),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                    size: 40,
                  ),
                ),
                const Text(''),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 243, 106, 106),
        onPressed: () {},
        child: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}
