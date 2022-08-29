import 'package:flutter/material.dart';
import 'package:foodxa/account.dart';

class MyDelivery extends StatefulWidget {
  const MyDelivery({Key? key}) : super(key: key);

  @override
  State<MyDelivery> createState() => _MyDeliveryState();
}

class _MyDeliveryState extends State<MyDelivery> {
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
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Center(
              child: Image.asset(
                "assets/images/3.jpg",
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Center(
              child: Text("Pick The Food",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey.shade800)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15),
            child: Center(
              child: Text(
                "Fastest operation to provide food",
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
                "by the fence",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MyAccount();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
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
                    Icons.arrow_forward_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "Skip",
                style: TextStyle(
                    color: Colors.blueGrey.shade800,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
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
