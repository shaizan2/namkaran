import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/controller/girlchrcontroller.dart';
import 'package:provider/provider.dart';

class Girlchr extends StatefulWidget {
  const Girlchr({super.key});

  @override
  State<Girlchr> createState() => _GirlchrState();
}

class _GirlchrState extends State<Girlchr> {
  @override
  void initState() {
    context.read<Girlchrcontroller>().getchr();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.watch<Girlchrcontroller>().ofgc == null
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (var i in context.watch<Girlchrcontroller>().ofgc!) ...[
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
                                  Icon(Icons.share),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.pink,
                      )
                    ],
                  ],
                ),
              ),
            ),
    );
  }
}
