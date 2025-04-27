import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/controller/boy.controller.dart';
import 'package:provider/provider.dart';

class Boyy extends StatefulWidget {
  const Boyy({super.key});

  @override
  State<Boyy> createState() => _BoyyState();
}

class _BoyyState extends State<Boyy> {
  @override
  void initState() {
    
    context.read<Boycontroller>().getVide();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<Boycontroller>().ofdata==null?Center(child: CircularProgressIndicator(),):Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for(var i in context.watch<Boycontroller>().ofdata!)...[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(i.name??'',style: TextStyle(color: Colors.blueAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width/2,
                            
                            child: Text( i.meaning??'',style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),))
                        ],
                      )
                      ,
                      Row(children: [
                         Icon(Icons.favorite_border),
                         SizedBox(
                          width: 10,
                         ),
                      Icon(Icons.copy),
                      SizedBox(
                          width: 10,
                         ),
                      Icon(Icons.share)
                      ],)
                    ],),
                  ),
                ),
                // ListTile(

                //   title: Text(i.name??''),
                //   subtitle: Text(i.meaning??''),
                //   trailing: Row(children: [
                //     Icon(Icons.favorite_border),
                //     Icon(Icons.copy),
                //     Icon(Icons.share)
                //   ],),
                // ),

                Divider(
                  color: Colors.blue,
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}