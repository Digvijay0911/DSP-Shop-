import 'package:flutter/material.dart';

class Women extends StatefulWidget {
  const Women({super.key});

  @override
  State<Women> createState() => _WomenState();
}

class _WomenState extends State<Women> {
  // ------------------------------------------------------------------------------------------
  final headerImage = [
    'https://static.nike.com/a/images/w_960,c_limit/94440eb0-8509-49a5-acf3-17fc032eaa50/image.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d01d0447-5de2-4668-be81-f9163e69b958/jordan-essentials-statement-top-ksw5fW.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c0b361d1-6932-465d-8b76-6bd6f3fb1e4a/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8f600547-a050-49a5-9bd5-718c2ce84b16/jordan-dri-fit-sport-golf-diamond-shorts-6hMscL.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c5c9acf7-de67-4867-b1bc-9574dddd0d03/jordan-awake-ny-fleece-hoodie.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ffaf48cb-c34c-46b4-95c0-6f286e682621/air-max-pulse-shoes-2bZSZV.png'
  ];
  final bottomImage = [
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/dc9007c2-184f-48f2-b14d-771d626ad8da/sportswear-chill-knit-t-shirt-sgbpqd.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3d53468a-ab45-4f69-af4e-a369a0ced251/jordan-flight-fleece-crew-neck-sweatshirt-C2vcbD.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b1e96082-5223-4466-9610-cd190398810f/running-division-running-jacket-tDkR3C.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0a8cb325-5127-49c8-8047-8303f27e45b8/jordan-slim-knit-dress-zHWdCL.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d6102a49-0c80-438b-8619-171e2773fe4c/jordan-flight-heritage-graphic-t-shirt-jvkVf9.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6fc1e708-7af2-4bf9-8583-bbdbfd232b38/jordan-tank-gT4vLx.png',
  ];

  // ==========================================================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Container - 1
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Must-Haves, Best Sellers & Mores",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: headerImage.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 7.0),
                              child: ClipRRect(
                                // Image border
                                child: SizedBox.fromSize(
                                  child: Container(
                                    width: 350,
                                    height: 500,
                                    child: Image.network(headerImage[index],
                                        height: 200, fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // Container - 2
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "     New In & Featured",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemCount: bottomImage.length,
                        itemBuilder: (context, index) {
                          return Image.network(
                            bottomImage[index],
                            height: 500,
                            width: 500,
                            fit: BoxFit.fill,
                          );
                        }),
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
