import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/controller/girlmus.contoller.dart';
import 'package:provider/provider.dart';

class Muslimgirl extends StatefulWidget {
  const Muslimgirl({super.key});

  @override
  State<Muslimgirl> createState() => _MuslimgirlState();
}

class _MuslimgirlState extends State<Muslimgirl> {
  @override
  void initState() {
    context.read<Girlmuscontoller>().getgirl();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<Girlmuscontoller>().ofGirl == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (var i in context.watch<Girlmuscontoller>().ofGirl!) ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      i.name ?? '',
                                      style: TextStyle(
                                          color: Colors.pink,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                        width: MediaQuery.sizeOf(context).width / 2,
                                        child: Text(
                                          i.meaning ?? '',
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
                                    Icon(Icons.share)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                         Divider(
                                  color: Colors.pink,
                                ),

                      ],
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
