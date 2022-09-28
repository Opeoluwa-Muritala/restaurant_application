import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_application/constants/foods.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  final placeholder = Opacity(
    opacity: 0,
    child: IconButton(
      onPressed: null,
      icon: Icon(Icons.no_cell),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Color.fromARGB(255, 206, 205, 205),
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/menu.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Resturant Name',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/chik.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Foods(prize: "15 usd", img: 'assets/spag.jpg'),
                  Foods(prize: "15 usd", img: 'assets/macaroni.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Foods(prize: "5 usd", img: 'assets/milkshake.jpg'),
                  Foods(prize: "10 usd", img: 'assets/bugar.jpg'),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
        color: Color.fromARGB(255, 189, 187, 187),
        shape: CircularNotchedRectangle(),
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
                    onPressed: () {
                      print("Home page");
                    },
                    icon: Icon(
                      Icons.home_outlined,
                      size: 40,
                    ),
                  ),
                  Text(''),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    print("Notifications");
                  },
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 40,
                  ),
                ),
                Text(''),
              ],
            ),
            placeholder,
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    print(" Accounts");
                  },
                  icon: Icon(
                    Icons.person_outlined,
                    size: 40,
                  ),
                ),
                Text(''),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    print("Favorite");
                  },
                  icon: Icon(
                    Icons.favorite_outline_outlined,
                    size: 40,
                  ),
                ),
                Text(''),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 243, 106, 106),
        onPressed: () {
          print("Shopping cart");
        },
        child: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          size: 40,
        ),
      ),
    );
  }
}
