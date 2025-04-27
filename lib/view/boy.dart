import 'package:flutter/material.dart';

import 'package:naamakaran_applications_1/dashboard.dart';
import 'package:naamakaran_applications_1/view/Muslims.dart';
import 'package:naamakaran_applications_1/view/boyy.dart';
import 'package:naamakaran_applications_1/view/christians.dart';

class Boy extends StatefulWidget {
  const Boy({super.key});

  @override
  State<Boy> createState() => _BoyState();
}

class _BoyState extends State<Boy> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
    
        body: Container(

          width: double.infinity,
          height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/boyback.png") ,
          
          fit: BoxFit.fill
          
          )
        ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
               Container(
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Dashboard()));
                  },
                  child: Image.asset("assets/head.png",
                  height: 40,
                  width: 40,
                  
                  ),
                ),
                
                    Text("Namkaran\nBaby Names",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    
                    ),
                
                
                    Row(children: [
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
                          width: 50  ,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/headboy.png",
                              ),
                            ),
                          ),
                        ),
                    ],),
                
                   Row(children: [
                     Icon(Icons.favorite_border,
                    size: 40,
                
                      color: Colors.white,
                    
                    ),
                    Icon(Icons.search,
                    
                    size: 40,
                    color: Colors.white,
                    )
                   ],)
                  ],
                ),
               )
            ,
            SizedBox(
              height: 20,
            ),
            
            Container(
              color: Colors.lightBlue,
              child: TabBar(
                labelStyle:TextStyle(
                  color: Colors.black
                ) ,
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
              child: TabBarView(children: [
               Boyy(),
              Muslims(),
               Christians()
              ]
              ),
            )
                // Expanded(
                //   child: Stack(
                //     children: [
                //       Container(
                //         decoration: BoxDecoration(
                //             image: DecorationImage(
                //                 image: AssetImage("assets/boyback.png"),
                //                 fit: BoxFit.fill)),
                //       ),
                //       Positioned(
                //           bottom: MediaQuery.of(context).size.height / 1.13,
                //           left: MediaQuery.of(context).size.width / 7,
                //           child: Center(
                //               child: Text(
                //             "Naamkaran\nBaby names",
                //             style: TextStyle(
                //                 fontSize: 20,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white),
                //           ))),
            
                //       Positioned(
                //         top: MediaQuery.of(context).size.height / 15,
                //         right: MediaQuery.of(context).size.width / 2.3,
                //         child: GestureDetector(
                //           onTap: () {
                //             Navigator.pushReplacement(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) => Dashboard()));
                //             setState(() {});
                //           },
                //           child: Container(
                //             width: MediaQuery.of(context).size.width * 1,
                //             height: 30,
                //             decoration: BoxDecoration(
                //                 image: DecorationImage(
                //               image: AssetImage("assets/head.png"),
                //             )),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         bottom: MediaQuery.of(context).size.height / 1.16,
                //         left: MediaQuery.of(context).size.width / 14,
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 1,
                //           height: 100,
                //           decoration: BoxDecoration(
                //             image: DecorationImage(
                //               image: AssetImage(
                //                 "assets/headgirl.png",
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         bottom: MediaQuery.of(context).size.height / 1.16,
                //         left: MediaQuery.of(context).size.width / 4,
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 1,
                //           height: 100,
                //           decoration: BoxDecoration(
                //             image: DecorationImage(
                //               image: AssetImage(
                //                 "assets/headboy.png",
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       Positioned(
                //         top: MediaQuery.of(context).size.height / 32,
                //         left: MediaQuery.of(context).size.width / 2.5,
                //         child: Container(
                //           width: MediaQuery.of(context).size.width * 1,
                //           height: 100,
                //           decoration: BoxDecoration(
                //             image: DecorationImage(
                //               image: AssetImage(
                //                 "assets/headfav.png",
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
            
                //       // SizedBox(
                //       //   height: 300,
                //       //   child: TabBar(tabs: [
                //       //     Container(
                //       //       height: 80,
                //       //       width: double.infinity,
                //       //       decoration: BoxDecoration(
                //       //         image: DecorationImage(image: AssetImage("assets/headboyy.png"),fit: BoxFit.fill)
                //       //       ),
                //       //       child: Center(child: Text("Hindu",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                //       //     ),
                //       //    Container(
                //       //     height: 80,
                //       //     width: double.infinity,
                //       //       decoration: BoxDecoration(
                //       //         image: DecorationImage(image: AssetImage("assets/headboyy.png"),fit: BoxFit.fill)
                //       //       ),
                //       //       child: Center(child: Text("Muslim",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                //       //     ),
                //       //     Container(
                //       //       height: 80,
                //       //       width: double.infinity,
                //       //       decoration: BoxDecoration(
                //       //         image: DecorationImage(image: AssetImage("assets/headboyy.png"),fit: BoxFit.fill)
                //       //       ),
                //       //       child: Center(child: Text("Chiristian",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                //       //     ),
                //       //   ]),
                //       // ),
                //       // TabBarView(children: [
                //       //   // GestureDetector(
                //       //   //   onTap: () {
                //       //   //     context.read<Girlcontroller>().getdata();
                //       //   //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Girll()));
                //       //   //   },
                //       //   // Girll(),
                //       //   Container(
                //       //       color: Colors.amber,
                //       //     ),
                //       //     Container(
                //       //       color: Colors.amber,
                //       //     ),
                //       //     Container(
                //       //       color: Colors.amber,
                //       //     ),
                //       // ],),
            
                     
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
