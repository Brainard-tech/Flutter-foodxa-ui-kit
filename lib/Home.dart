import 'package:flutter/material.dart';
import 'package:foodxa/foods.dart';
import 'package:foodxa/juice.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 245),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: const Icon(
                      Icons.menu,
                      color: Colors.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(213, 33, 31, 31)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 203),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/team-1.jpg",
                        width: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 100,
                height: 45,
                color: const Color.fromARGB(255, 248, 245, 245),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.grey.shade400,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey)),
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 116, 3),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 255, 116, 3),
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Search',
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const MyFoods();
                        }));
                      },
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 235, 229, 229),
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/3.jpg",
                              width: 40,
                            ),
                            const Text(
                              "Foods",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(213, 33, 31, 31)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const MyJuice();
                        }));
                      },
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 235, 229, 229),
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/juice.jpg",
                              width: 40,
                            ),
                            const Text(
                              "Juice",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(213, 33, 31, 31)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12),
                    child: Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 235, 229, 229),
                              offset: Offset(0.0, 1.0),
                              blurRadius: 5.0,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/grilled.jpg",
                            width: 40,
                          ),
                          const Text(
                            "Grilled",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(213, 33, 31, 31)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12),
                    child: Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 235, 229, 229),
                              offset: Offset(0.0, 1.0),
                              blurRadius: 5.0,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/noodles.jpg",
                            width: 40,
                          ),
                          const Text(
                            "Noodles",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(213, 33, 31, 31)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Foods",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(236, 33, 31, 31)),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(187, 33, 31, 31)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          height: 190,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 235, 229, 229),
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/14.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      child: const Icon(
                                        Icons.delivery_dining,
                                        color: Color.fromARGB(255, 255, 116, 3),
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "Shrimps and Argula",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "\$22.50",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star_outlined,
                                      size: 18,
                                      color: Colors.amberAccent,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text("4.9",
                                          style: TextStyle(fontSize: 10)),
                                    ),
                                    Icon(
                                      Icons.punch_clock_rounded,
                                      size: 16,
                                      color: Color.fromARGB(255, 255, 116, 3),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text("20 Min",
                                          style: TextStyle(
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          height: 190,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 235, 229, 229),
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/7.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      child: const Icon(
                                        Icons.delivery_dining,
                                        color: Color.fromARGB(255, 255, 116, 3),
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "Grilled meat",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "\$18.99",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star_outlined,
                                      size: 18,
                                      color: Colors.amberAccent,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text("4.9",
                                          style: TextStyle(fontSize: 10)),
                                    ),
                                    Icon(
                                      Icons.punch_clock_rounded,
                                      size: 16,
                                      color: Color.fromARGB(255, 255, 116, 3),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text("20 Min",
                                          style: TextStyle(
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          height: 190,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 235, 229, 229),
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/5.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      child: const Icon(
                                        Icons.delivery_dining,
                                        color: Color.fromARGB(255, 255, 116, 3),
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "Kebbas",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "\$15.10",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star_outlined,
                                      size: 18,
                                      color: Colors.amberAccent,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text("4.9",
                                          style: TextStyle(fontSize: 10)),
                                    ),
                                    Icon(
                                      Icons.punch_clock_rounded,
                                      size: 16,
                                      color: Color.fromARGB(255, 255, 116, 3),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text("20 Min",
                                          style: TextStyle(
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 180,
                          height: 190,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 235, 229, 229),
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 5.0,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  SizedBox(
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/6.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                      ),
                                      child: const Icon(
                                        Icons.delivery_dining,
                                        color: Color.fromARGB(255, 255, 116, 3),
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(6),
                                child: Text(
                                  "Shrimps and Kebbas",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "\$19.20",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star_outlined,
                                      size: 18,
                                      color: Colors.amberAccent,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text("4.9",
                                          style: TextStyle(fontSize: 10)),
                                    ),
                                    Icon(
                                      Icons.punch_clock_rounded,
                                      size: 16,
                                      color: Color.fromARGB(255, 255, 116, 3),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Text("20 Min",
                                          style: TextStyle(
                                            fontSize: 10,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Nearby Restaurant",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(236, 33, 31, 31)),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(187, 33, 31, 31)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 180,
                height: 230,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 235, 229, 229),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/17.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color.fromARGB(255, 255, 116, 3),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Free Delivery",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.delivery_dining,
                                  color: Color.fromARGB(255, 255, 116, 3),
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "Burger King",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 23),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.star_outlined,
                            size: 18,
                            color: Colors.amberAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text("4.9", style: TextStyle(fontSize: 10)),
                          ),
                          Icon(
                            Icons.punch_clock_rounded,
                            size: 16,
                            color: Color.fromARGB(255, 255, 116, 3),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text("20 Min",
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 191, 190, 190),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 5.0,
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                "Burger",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 191, 190, 190),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 5.0,
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                "Pizza",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 191, 190, 190),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 5.0,
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                "Food",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                width: 180,
                height: 250,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 235, 229, 229),
                        offset: Offset(0.0, 1.0),
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/1.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Center(
                              child: Text(
                                "Free Delivery",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.delivery_dining,
                                  color: Color.fromARGB(255, 255, 116, 3),
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(6),
                      child: Text(
                        "McDonald's",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 23),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.star_outlined,
                            size: 18,
                            color: Colors.amberAccent,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text("4.9", style: TextStyle(fontSize: 10)),
                          ),
                          Icon(
                            Icons.punch_clock_rounded,
                            size: 16,
                            color: Color.fromARGB(255, 255, 116, 3),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text("20 Min",
                                style: TextStyle(
                                  fontSize: 10,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 191, 190, 190),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 5.0,
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                "Burger",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 191, 190, 190),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 5.0,
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                "Pizza",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 191, 190, 190),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 5.0,
                                  ),
                                ]),
                            child: const Center(
                              child: Text(
                                "Food",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
