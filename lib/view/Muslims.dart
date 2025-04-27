import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/controller/mus.contoler.dart';
import 'package:provider/provider.dart';

class Muslims extends StatefulWidget {
  const Muslims({super.key});

  @override
  State<Muslims> createState() => _MuslimsState();
}

class _MuslimsState extends State<Muslims> {
  @override
  void initState() {
    context.read<Muscontoler>().getboy();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<Muscontoler>().ofBoy==null?Center(
        child: CircularProgressIndicator(),
      ):Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for(var i in context.watch<Muscontoler>().ofBoy! )...[
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
                 Divider(
                                  color: Colors.blue,
                                ),

          ]]),
        ),
      ),
    );
  }
}