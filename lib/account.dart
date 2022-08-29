import 'package:flutter/material.dart';
import 'package:foodxa/fast_delivery.dart';
import 'package:foodxa/login.dart';
import 'package:foodxa/sign_up.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccount();
}

class _MyAccount extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              "assets/images/1.jpg",
              width: 100,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/images/2.jpg",
              width: 100,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/chef.jpg",
              width: 130,
            ),
          ),
          Center(
            child: Text("Good Evening",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade800)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "Fastest food delivery service",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child: Center(
              child: Text(
                "for you",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MySigup();
                    }));
                  },
                  child: Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(143, 158, 158, 158),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(143, 158, 158, 158),
                            offset: Offset(0.0, 1.0),
                            blurRadius: 5.0,
                          )
                        ]),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const MyLogin();
                    }));
                  },
                  child: Container(
                    width: 130,
                    height: 50,
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
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "Guest Visit",
                style: TextStyle(
                    color: Colors.blueGrey.shade800,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MyDelivery();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
