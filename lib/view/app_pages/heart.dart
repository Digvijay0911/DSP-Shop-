import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> {
  // -------------------------------------------------
  var count = [1, 1, 1, 1, 1];
  var price = [14000, 14000, 14000, 14000, 14000];

  var total = 0;

  @override
  void initState() {
    setState(() {
      for (var i = 0; i < price.length; i++) {
        total = total + price[i];
      }
    });
    super.initState();
  }

  // =================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search_outlined,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Image.asset(
          "assets/images/shirt.png",
          height: 40,
          width: 30,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Material(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      // color: Colors.blue,
                      child: Text(
                        "ALL PRODUCTS",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.amber,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "2",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0, left: 7),
                            child: Text(
                              "FILTERS",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: Container(
                height: 650,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: count.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 7.0, bottom: 10),
                        child: ClipRRect(
                          // Image border
                          child: SizedBox.fromSize(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 228, 224, 224),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
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
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Text(
                                              "MEN'S RUNNING SHOES",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Text(
                                            "    Nike Air Max 270",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0),
                                            child: Image.asset(
                                              "assets/images/rating (1).png",
                                              height: 50,
                                              width: 120,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                            "    Rs. ${price[index] * count[index]}",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
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
    );
  }
}
