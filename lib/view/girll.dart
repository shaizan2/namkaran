import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/controller/girl.controller.dart';
import 'package:provider/provider.dart';

class Girll extends StatefulWidget {
  const Girll({super.key});

  @override
  State<Girll> createState() => _GirllState();
}

class _GirllState extends State<Girll> {
  @override
  void initState() {
    context.read<Girlcontroller>().getdata();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<Girlcontroller>().ofData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(children: [
                    for (var e in context.watch<Girlcontroller>().ofData!) ...[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.name ?? '',
                                  style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                    width: MediaQuery.sizeOf(context).width / 2,
                                    child: Text(
                                      e.meaning ?? '',
                                      style: TextStyle(
                                          color: Colors.pinkAccent,
                                          fontSize: 20,
                                         // fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis),
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.copy),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.share),
                              
                              ],
                            )
                          ],
                        ),
                      ),
                        Divider(
                                  color: Colors.pink,
                                ),

                    ],
                  ]),
                ),
              ),
            ),
    );
  }
}
