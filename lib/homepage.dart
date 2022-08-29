import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodxa/fast_delivery.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MyDelivery())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            child: Container(
              margin: const EdgeInsets.only(top: 135),
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 116, 3),
                  borderRadius: BorderRadius.circular(25),
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
                      fontSize: 30,
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
        ],
      ),
    );
  }
}
