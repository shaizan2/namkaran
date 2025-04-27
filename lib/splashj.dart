import 'dart:async';

import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/dashboard.dart';

class Splashj extends StatefulWidget {
  const Splashj({super.key});

  @override
  State<Splashj> createState() => _SplashjState();
  
}


class _SplashjState extends State<Splashj> {
  @override
  void initState() {
     Timer(Duration(seconds: 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard()));
   });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
  children: [
    Container(
      height: double.infinity,
      width: double.infinity,
        child: Image.asset("assets/app.jpeg",),
      
    ),
  ],
      ),
    );
  }
}