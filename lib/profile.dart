import 'package:flutter/material.dart';
import 'package:foodxa/bottom_navbar_home.dart';
import 'package:foodxa/foods.dart';
import 'package:foodxa/restuarant.dart';
import 'package:foodxa/setting.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
                    "My Profile",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(213, 33, 31, 31)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 150,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/1.png",
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "Dywane Johson",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "47 W 13th St,New York,NY",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Center(
                child: Text(
                  "10011 USA",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.edit,
                    color: Color.fromARGB(255, 255, 116, 3),
                    size: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 12),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const MyProfile();
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
                            "Favourite",
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
                        return const Mysetting();
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
                              "Setting",
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
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
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
                            "Asian argula with shrimps",
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
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
                            "Asian argula with shrimps",
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
                        ),
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
