import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/modal/BoyM.dart';
import 'package:http/http.dart'as http;
class Muscontoler extends ChangeNotifier {
  List<BoyM>? _ofBoy;
  List<BoyM>? get ofBoy=> _ofBoy;
  void getboy()async{
    try {
      var boy=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/naamkaran/post_list_by_cat_and_gender?category_id=8&gender=1"));
      if (boy.statusCode==200) {
        _ofBoy=BoyM.ofBoy(jsonDecode(boy.body));
        notifyListeners();
      }
    } catch (e) {
      
    }
  }
}