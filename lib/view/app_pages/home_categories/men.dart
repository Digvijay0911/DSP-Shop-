import 'package:flutter/material.dart';

class Men extends StatefulWidget {
  const Men({super.key});

  @override
  State<Men> createState() => _MenState();
}

class _MenState extends State<Men> {
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
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b471d83b-8799-4657-914a-b7b13401fdda/jordan-flight-mvp-t-shirt-pzSg1T.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d01d0447-5de2-4668-be81-f9163e69b958/jordan-essentials-statement-top-ksw5fW.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ebd4e488-3422-4ce9-8707-212869ae5f12/jordan-flight-mvp-85-t-shirt-hdS3DZ.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/21f71cfb-b918-4d48-a873-930eb9b9ceac/jordan-trophy-room-warm-up-top.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/89eca902-af58-4da8-b59c-38524381f001/jordan-brand-t-shirt-ddD2MR.png',
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d3422a30-589f-48d4-97b2-8ec8f9e38ba6/jordan-trophy-room-top.png',
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
