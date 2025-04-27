import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/view/Muslimgirl.dart';
import 'package:naamakaran_applications_1/view/girlchr.dart';
import 'package:naamakaran_applications_1/view/girll.dart';

import '../dashboard.dart';

class Girl extends StatefulWidget {
  const Girl({super.key});

  @override
  State<Girl> createState() => _GirlState();
}

class _GirlState extends State<Girl> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/girlbackground.png"),
                    fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()));
                          },
                          child: Image.asset(
                            "assets/head.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          "Namkaran\nBaby Names",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/headgirl.png",
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/headboy.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              size: 40,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.search,
                              size: 40,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.pinkAccent,
                    child: TabBar(
                        labelStyle: TextStyle(color: Colors.black),
                        unselectedLabelColor: Colors.white,
                        tabs: [
                          Tab(
                            text: "Hindu",
                          ),
                          Tab(
                            text: "Muslim",
                          ),
                          Tab(
                            text: "Christian",
                          )
                        ]),
                  ),
                  Expanded(
                    child:
                        TabBarView(children: [Girll(), Muslimgirl(), Girlchr()]),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
