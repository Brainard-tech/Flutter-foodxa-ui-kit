import 'package:flutter/material.dart';

import 'package:foodxa/Home.dart';
import 'package:foodxa/restuarant.dart';

class MyFoods extends StatefulWidget {
  const MyFoods({Key? key}) : super(key: key);

  @override
  State<MyFoods> createState() => _MyFoodsState();
}

class _MyFoodsState extends State<MyFoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 245, 245),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
        child: ListView(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MyHome();
                    }));
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(213, 33, 31, 31)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 168),
                  child: Icon(
                    Icons.search_sharp,
                    color: Colors.grey,
                  ),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 12, 8),
                      child: Icon(
                        Icons.shopping_bag,
                        color: Color.fromARGB(255, 96, 92, 92),
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 116, 3),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
                  hintText: 'Asian Food',
                ),
              ),
            ),
            Row(
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 255, 116, 3),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 255, 116, 3),
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: const Center(
                          child: Text(
                            "Foods",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
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
                        return const MyRestuarant();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 249, 248, 248),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 5.0,
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: Text(
                              "Resturants",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(213, 33, 31, 31)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
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
                          alignment: Alignment.topRight,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: SizedBox(
                                    height: 110,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/14.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromARGB(
                                            255, 255, 116, 3),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 255, 116, 3),
                                            offset: Offset(0.0, 1.0),
                                            blurRadius: 5.0,
                                          ),
                                        ]),
                                    child: const Center(
                                      child: Text(
                                        "\$09.99",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                  Icons.favorite,
                                  color: Colors.grey,
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
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(
                            "Asian argula",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 5),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star_outlined,
                                size: 18,
                                color: Colors.amberAccent,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child:
                                    Text("4.9", style: TextStyle(fontSize: 10)),
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
                  Container(
                    width: 160,
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
                          alignment: Alignment.topRight,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: SizedBox(
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/16.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromARGB(
                                            255, 255, 116, 3),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 255, 116, 3),
                                            offset: Offset(0.0, 1.0),
                                            blurRadius: 5.0,
                                          ),
                                        ]),
                                    child: const Center(
                                      child: Text(
                                        "\$12.99",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(6),
                          child: Text(
                            "Burga",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(
                            "Herbs with grouper fish",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 10),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star_outlined,
                                size: 18,
                                color: Colors.amberAccent,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child:
                                    Text("4.9", style: TextStyle(fontSize: 10)),
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
              padding: const EdgeInsets.only(top: 40, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
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
                          alignment: Alignment.topRight,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: SizedBox(
                                    height: 110,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/14.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromARGB(
                                            255, 255, 116, 3),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 255, 116, 3),
                                            offset: Offset(0.0, 1.0),
                                            blurRadius: 5.0,
                                          ),
                                        ]),
                                    child: const Center(
                                      child: Text(
                                        "\$09.99",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(6),
                          child: Text(
                            "Stir-Fried Spicy and Herb",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(
                            "Herb with grouper fish",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 5),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star_outlined,
                                size: 18,
                                color: Colors.amberAccent,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child:
                                    Text("4.9", style: TextStyle(fontSize: 10)),
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
                  Container(
                    width: 160,
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
                          alignment: Alignment.topRight,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: SizedBox(
                                    height: 120,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "assets/images/6.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromARGB(
                                            255, 255, 116, 3),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color.fromARGB(
                                                255, 255, 116, 3),
                                            offset: Offset(0.0, 1.0),
                                            blurRadius: 5.0,
                                          ),
                                        ]),
                                    child: const Center(
                                      child: Text(
                                        "\$10 .99",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(6),
                          child: Text(
                            "Buddha Shrimps",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Text(
                            "Rice with grouper shrimps",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 10),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.star_outlined,
                                size: 18,
                                color: Colors.amberAccent,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child:
                                    Text("4.9", style: TextStyle(fontSize: 10)),
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
          ],
        ),
      ),
    );
  }
}
