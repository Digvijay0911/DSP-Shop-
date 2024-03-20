import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  var TotalPrice, Count;

  Checkout({super.key, required this.TotalPrice, required this.Count});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  var tax = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/shirt.png",
                        height: 30,
                        width: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "CHECKOUT",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                    color: Color.fromARGB(255, 211, 209, 209),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 5, right: 5, bottom: 5),
                      child: Text(
                        "SHIPPING",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "SHIPPING ADDRESS",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.question_mark_outlined)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 5, right: 5, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 190,
                        height: 40,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "First Name",
                            hintStyle: TextStyle(fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 190,
                        height: 40,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Last Name",
                            hintStyle: TextStyle(fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 5, right: 5, bottom: 15),
                  child: Container(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Street Address",
                        hintStyle: TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 5, right: 5, bottom: 15),
                  child: Container(
                    width: 400,
                    height: 40,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Apt/Suite/Unit (Optional)",
                        hintStyle: TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 5, right: 5, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 190,
                        height: 40,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "City",
                            hintStyle: TextStyle(fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 190,
                        height: 40,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Postal Code",
                            hintStyle: TextStyle(fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              // borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5.0, left: 5, right: 5, bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        "SHIPPING METHOD",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.question_mark_outlined)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 1.0, left: 5, right: 5, bottom: 15),
                  child: Text(
                    "Enter a shipping address to see acurate shipping options for your order.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 5, right: 5, bottom: 15),
                  child: Container(
                    width: 300,
                    // color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ORDER SUMMARY",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Subtotal",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rs.${widget.TotalPrice}",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Taxes",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "$tax",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shipping (${widget.Count} items)",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "-",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                              child: Divider(
                            color: Colors.grey,
                            height: 2,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "TOTAL",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              Text(
                                "Rs.${widget.TotalPrice + tax}",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60.0, right: 8, left: 8, bottom: 2),
                  child: Container(
                    width: 400,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "PLACED",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
