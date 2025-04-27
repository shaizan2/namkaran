import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/view/boy.dart';
import 'package:naamakaran_applications_1/view/girl.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background.jpg"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
         top: MediaQuery.of(context).size.height/6.5,
            child: Container(
                width: MediaQuery.of(context).size.width*1,
                height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/home.jpg",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height/3.4,
              right: MediaQuery.of(context).size.width/4 ,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Girl()));
              },
              child: Container(
                 width: MediaQuery.of(context).size.width*1,
                 height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/girl.png",
                      ),fit: BoxFit.contain
                    ),),
              ),
            ),
          ),
       
          Positioned(
              top: MediaQuery.of(context).size.height/3.4,
           left: MediaQuery.of(context).size.width/4,
            child: GestureDetector(
               onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Boy()));
              },
              child: Container(
                 width: MediaQuery.of(context).size.width*1,
                 height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/boy.png",
                      ),fit: BoxFit.contain
                    ),),
              ),
            ),
          ),
            Positioned(
              top: MediaQuery.of(context).size.height/1.4,
         //  left: MediaQuery.of(context).size.width/4,
            child: Container(
               width: MediaQuery.of(context).size.width*1,
               height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/fav.png",
                    ),
                  ),),
            ),
          ),
          
        ],
      ),
    );
  }
}
