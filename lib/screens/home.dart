import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:restaurant_application/screens/aboutpage.dart';
import 'package:restaurant_application/screens/detailspage.dart';
import 'package:restaurant_application/screens/profilepage.dart';

import '../constants/foodcard.dart';
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

  static List<Item> foods = [
    Item(
        name: 'Spagetti',
        prize: '\$25',
        img: 'assets/spag.jpg',
        description:
            'Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta. It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat, water, and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum-wheat semolina.'),
    Item(
        name: 'Macaroni',
        prize: '\$25',
        img: 'assets/macaroni.jpg',
        description:
            'Macaroni ( Italian: maccheroni) is dry pasta shaped like narrow tubes. Made with durum wheat, macaroni is commonly cut in short lengths; curved macaroni may be referred to as elbow macaroni.'),
    Item(
        name: 'Rosted chicken',
        prize: '\$35',
        img: 'assets/chicken.jpg',
        description:
            'Crispy, crackly skin, with most of the fat rendered out. Perfectly cooked, barely pink breast (155°F) Thoroughly roasted thigh and legs (165–175°F) As little effort as possible to get the above, so that it is simple enough to prepare even on a weeknight.'),
    Item(
        name: 'Milkshake',
        prize: '\$10',
        img: 'assets/milkshake.jpg',
        description:
            'a frothy drink made of cold milk, flavoring, and usually ice cream, shaken together or blended in a mixer'),
    Item(
        name: 'Grilled chicken',
        prize: '\$35',
        img: 'assets/chik.jpg',
        description:
            "A 3-ounce serving of cooked chicken breast has about 140 calories, 3 grams of fat and 25 grams of protein. Chicken breast is also a great source of selenium, Vitamin B6, niacin and phosphorus. While delicious, we generally do not recommend eating the skin of the chicken because you'll quadruple the fat content."),
    Item(
        name: 'Burgar',
        prize: '\$15',
        img: 'assets/bugar.jpg',
        description:
            'A sandwich consisting of fillings—usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.'),
    Item(
        name: 'Turkey',
        prize: '\$45',
        img: 'assets/turky.png',
        description:
            'Made with a fresh or frozen and thawed turkey, lots of rich butter, fresh herbs, a hint of bright lemon, and flavorful onion and garlic.'),
  ];

  List<Item> display_list = List.from(foods);
  void updateList(String value) {
    setState(() {
      display_list = foods
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        backgroundColor: Colors.brown,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Column(
                children: [
                  DrawerHeader(
                      child: Column(
                    children: const [
                      Icon(
                        Icons.fastfood,
                        color: Colors.white,
                        size: 60,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Taste Me",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 40)),
                    ],
                  )),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const ProfilePage();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    title: Text(
                      "P r o f i l e".toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const About();
                        },
                      ));
                    },
                    leading: const Icon(
                      Icons.phone_android,
                      color: Colors.white,
                    ),
                    textColor: Colors.white,
                    title: Text(
                      "A b o u t".toUpperCase(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ListTile(
                onTap: () {
                  SystemNavigator.pop();
                },
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                textColor: Colors.white,
                title: Text(
                  "L O G O U T".toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Image.asset(
              "assets/menu.png",
              color: Colors.brown,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
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
                onChanged: updateList,
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
          Expanded(
              flex: 2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: display_list.length,
                  itemBuilder: (context, index) {
                    return foodcard(
                        name: display_list[index].name,
                        prize: display_list[index].prize,
                        img: display_list[index].img,
                        food: foods,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Detailspage(
                                name: display_list[index].name,
                                prize: display_list[index].prize,
                                img: display_list[index].img,
                                description: display_list[index].description);
                          }));
                        });
                  })),
          Expanded(
              flex: 2,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Offers & Discounts",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width * .9,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/chik.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0XFFFF961F).withOpacity(0.7),
                                Colors.brown.shade300.withOpacity(0.7)
                              ],
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              const Expanded(
                                  child: Icon(
                                Icons.fastfood,
                                color: Colors.white,
                                size: 100,
                              )),
                              Expanded(
                                  child: RichText(
                                      text: const TextSpan(children: [
                                TextSpan(
                                    text: 'Get Discount of \n',
                                    style: TextStyle(fontSize: 16)),
                                TextSpan(
                                    text: '30% \n',
                                    style: TextStyle(
                                        fontSize: 43,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text:
                                        'at Taste me on your first order & instant cashback',
                                    style: TextStyle(fontSize: 12)),
                              ]))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
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
