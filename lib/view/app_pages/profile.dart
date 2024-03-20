import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // ----------------------------------------------------

  var friends = [
    "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww",
    "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
    "https://images.unsplash.com/photo-1599566150163-29194dcaad36?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
    "https://media.istockphoto.com/id/1443543093/photo/mature-woman-watching-the-sunset-over-the-ocean.webp?b=1&s=170667a&w=0&k=20&c=ogxh42NdYFXd-VsvnjxP49pDOU1mdjbX79iu_EgRL0Y=",
    "https://images.unsplash.com/photo-1499482125586-91609c0b5fd4?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
  ];

  // ===================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Image.asset(
              "assets/images/cancel.png",
              height: 15,
              width: 15,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Container - 1
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 20, right: 20, bottom: 10),
              child: Material(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff6F6F6F),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "DIGVIJAY PATIL",
                          style: TextStyle(
                              fontSize: 18,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "New York",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 170,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xff6F6F6F),
                              width: 1,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text(
                              "EDIT PROFILE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80.0, right: 80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/boarding-pass.png",
                                    color: const Color(0xff6F6F6F),
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Pass",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/setting.png",
                                    color: const Color(0xff6F6F6F),
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Container - 2
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 20, right: 20, bottom: 10),
              child: Material(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff6F6F6F),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your DSP Member Rewards",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "3 Available",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff6F6F6F)),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_right_alt)
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Container - 3
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, left: 20, right: 20, bottom: 10),
              child: Material(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff6F6F6F),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FRIENDS (7)",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                            Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff6F6F6F),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 80,
                              width: 340,
                              child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: friends.length,
                                  itemBuilder: (context, index) {
                                    return ClipRRect(
                                      // Image border
                                      child: SizedBox.fromSize(
                                        child: Container(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 6.0),
                                            child: CircleAvatar(
                                              radius: 40,
                                              backgroundImage: NetworkImage(
                                                friends[index],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
