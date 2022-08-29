import 'package:flutter/material.dart';
import 'package:foodxa/cart1.dart';
import 'package:foodxa/my%20card.dart';

class MyCheckout extends StatefulWidget {
  const MyCheckout({Key? key}) : super(key: key);

  @override
  State<MyCheckout> createState() => _MyCheckoutState();
}

enum OS { mac, window, linux }

class _MyCheckoutState extends State<MyCheckout> {
  OS? _os = OS.mac;
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
                      return const MyCart1();
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
                    "Checkout",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(213, 33, 31, 31)),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Order Will",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const Text(
              "Be Delivered To",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  activeColor:
                                      const Color.fromARGB(255, 255, 116, 3),
                                  value: OS.mac,
                                  groupValue: _os,
                                  onChanged: (OS? value) {
                                    setState(() {
                                      _os = value;
                                    });
                                  },
                                ),
                                const Text(
                                  "Home",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Icon(Icons.delivery_dining),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.contact_phone,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text("+000-555-555-1234   "),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.home_work_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text("52 Riverside st 30092"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  activeColor: Colors.grey,
                                  value: OS.mac,
                                  groupValue: _os,
                                  onChanged: (OS? value) {
                                    setState(() {
                                      _os = value;
                                    });
                                  },
                                ),
                                const Text(
                                  "Work",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Icon(Icons.delivery_dining),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.contact_phone,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text("+000-555-555-1234   "),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.home_work_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text("36 archibald st 73385"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 180,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(0.0, 1.0),
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  activeColor: Colors.grey,
                                  value: OS.mac,
                                  groupValue: _os,
                                  onChanged: (OS? value) {
                                    setState(() {
                                      _os = value;
                                    });
                                  },
                                ),
                                const Text(
                                  "Office",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 60),
                                  child: Icon(Icons.delivery_dining),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.contact_phone,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text("+000-555-555-1234   "),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(
                                    Icons.home_work_outlined,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5, top: 5),
                                  child: Text("12 belgium st 1592"),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Payment method",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
                      Icons.credit_card,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Credit Card"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 166),
                    child: Radio(
                      activeColor: Colors.red,
                      value: OS.mac,
                      groupValue: _os,
                      onChanged: (OS? value) {
                        setState(() {
                          _os = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
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
                      Icons.paypal_sharp,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Paypal"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190),
                    child: Radio(
                      activeColor: Colors.grey,
                      value: OS.mac,
                      groupValue: _os,
                      onChanged: (OS? value) {
                        setState(() {
                          _os = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Delivery Charge",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$0.00",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$90.00",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$90.00",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const MyCard();
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 350,
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
                              "Checkout",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
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
