import 'package:flutter/material.dart';
import 'package:foodxa/Home.dart';
import 'package:foodxa/bottom_navbar_home.dart';
import 'package:foodxa/foods.dart';
import 'package:foodxa/more%20mcDonald_subway.dart';

class MyRestuarant extends StatefulWidget {
  const MyRestuarant({Key? key}) : super(key: key);

  @override
  State<MyRestuarant> createState() => _MyRestuarantState();
}

class _MyRestuarantState extends State<MyRestuarant> {
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
                  icon: Container(
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
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 12),
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                width: 200,
                height: 267,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 229, 229),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "McDonald's",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              width: 150,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/22.jfif",
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: SizedBox(
                              width: 150,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/10.jpg",
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const MyMcdonald_subway_more();
                              }));
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/images/23.jfif",
                                      width: 100,
                                      fit: BoxFit.cover,
                                      color: Colors.grey,
                                      colorBlendMode: BlendMode.modulate,
                                    ),
                                  ),
                                ),
                                const Text(
                                  " + 16",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
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
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: 200,
                height: 267,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 235, 229, 229),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 5.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 10),
                          child: Text(
                            "Subway",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                              width: 150,
                              height: 200,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/images/26.jfif",
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: SizedBox(
                              width: 150,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  "assets/images/6.jpg",
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const MyMcdonald_subway_more();
                              }));
                            },
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/images/9.jpg",
                                      width: 100,
                                      fit: BoxFit.cover,
                                      color: Colors.grey,
                                      colorBlendMode: BlendMode.modulate,
                                    ),
                                  ),
                                ),
                                const Text(
                                  " + 16",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
