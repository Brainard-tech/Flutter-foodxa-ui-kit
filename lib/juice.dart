import 'package:flutter/material.dart';
import 'package:foodxa/Home.dart';
import 'package:foodxa/bottom_navbar_home.dart';

class MyJuice extends StatefulWidget {
  const MyJuice({Key? key}) : super(key: key);

  @override
  State<MyJuice> createState() => _MyJuiceState();
}

class _MyJuiceState extends State<MyJuice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      return const MyBottomNavbarHome();
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
                    "Juice",
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
              padding: const EdgeInsets.only(top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            width: 155,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/27..jpg",
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
                                Icons.favorite,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(6),
                            child: Text(
                              "Strawberry fresh juice",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              "Strawberry fresh juice",
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
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 30,
                              width: 80,
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
                                  "\$12.49",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            width: 155,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/28.jfif",
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
                                Icons.favorite,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(6),
                            child: Text(
                              "Fresh Oranges juices",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              "Fresh orange juices",
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
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 30,
                              width: 80,
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
                                  "\$07.22",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            width: 155,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/29.jfif",
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
                                Icons.favorite,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(6),
                            child: Text(
                              "Cranberry fresh juices",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              "Cranberry fresh juices",
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
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 30,
                              width: 80,
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
                                  "\$03.33",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          SizedBox(
                            width: 155,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/images/juice.jpg",
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
                                Icons.favorite,
                                color: Colors.grey,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(6),
                            child: Text(
                              "Fresh Oranges juices",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 17),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Text(
                              "Fresh orange juices",
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
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 30,
                              width: 80,
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
                                  "\$08.67",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
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
            )
          ],
        ),
      ),
    );
  }
}
