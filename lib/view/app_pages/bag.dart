import 'package:dsp_shop/view/app_pages/bag_categories/checkout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  //---------------------------------------------------------------------------
  final userName = TextEditingController();
  var count = [1, 1, 1, 1, 1];
  var price = [14000, 14000, 14000, 14000, 14000];

  var total = 0;
  var countLength = 0;

  @override
  void initState() {
    setState(() {
      for (var i = 0; i < price.length; i++) {
        total = total + price[i];
      }
    });
    super.initState();
  }

  // ==========================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Image.asset(
          "assets/images/shirt.png",
          height: 40,
          width: 30,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: count.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(right: 7.0, bottom: 10),
                            child: ClipRRect(
                              // Image border
                              child: SizedBox.fromSize(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 216, 212, 212),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Nike Air Max 270",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              "Review {4.8}",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Rs. ${price[index] * count[index]}",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        count[index]++;

                                                        total = total +
                                                            price[index];

                                                        // ---------
                                                      });
                                                    },
                                                    child: Icon(
                                                        Icons.add_box_rounded)),
                                                Text(
                                                  " ${count[index]} ",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      if (count[index] > 1) {
                                                        setState(() {
                                                          count[index]--;

                                                          total = total -
                                                              price[index];
                                                        });
                                                      }
                                                    },
                                                    child: Icon(
                                                        Icons.remove_circle)),
                                              ],
                                            )
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            print('Tapped on item $index');
                                          },
                                          child: Image.network(
                                            "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4acc8e1e-6fe3-4806-b25b-856578c81cd7/air-max-excee-shoe-lPbXqt.png",
                                            fit: BoxFit.fill,
                                            height: 180,
                                            width: 160,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Material(
              elevation: 10,
              child: Container(
                color: Color.fromARGB(255, 245, 243, 243),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total Price",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff6F6F6F),
                              ),
                            ),
                            Text(
                              "Rs.$total",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            for (var i = 0; i < count.length; i++) {
                              countLength = count.length;
                            }
                          });

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Checkout(
                                      TotalPrice: total, Count: countLength)));
                        },
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Proceed",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
