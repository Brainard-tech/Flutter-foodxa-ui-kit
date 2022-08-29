import 'package:flutter/material.dart';
import 'package:foodxa/account.dart';
import 'package:foodxa/bottom_navbar_home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/1.jpg",
              width: 90,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/2.jpg",
              width: 90,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 116, 3),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 116, 3),
                      offset: Offset(0.0, 1.0),
                      blurRadius: 5.0,
                    )
                  ]),
              child: const Icon(
                Icons.restaurant_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Center(
              child: Text("FoodXa",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade800)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Center(
              child: Text(
                "Food Delivery Service",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade800)),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      "Enter your email and password",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          // onTap: () {
                          //   print("Hello guys");
                          // },
                          autocorrect: true,
                          autofocus: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            icon: Container(
                              height: 50,
                              width: 50,
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
                              child: const Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: 'Enter your Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.lock_open_sharp,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    "|",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            icon: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color:
                                        const Color.fromARGB(255, 255, 116, 3),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 255, 116, 3),
                                        offset: Offset(0.0, 1.0),
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: const Icon(
                                  Icons.lock_open_sharp,
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Enter your password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const MyBottomNavbarHome();
                        }));
                      },
                      child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 350,
                          height: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 116, 3),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 255, 116, 3),
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 5.0,
                                )
                              ]),
                          child: const Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(
                            color: Colors.blueGrey.shade800,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 116, 3),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MyAccount();
                    }));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Center(
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 116, 3),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 255, 116, 3),
                                offset: Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              )
                            ]),
                        child: const Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/2.jpg",
              width: 100,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/1.jpg",
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}

