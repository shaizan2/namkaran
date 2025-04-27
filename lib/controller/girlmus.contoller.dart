import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:naamakaran_applications_1/modal/girlM.dart';
class Girlmuscontoller  extends ChangeNotifier{
  List<Girlm>? _ofGirl;
    List<Girlm>?get ofGirl=>  _ofGirl;
    void getgirl()async{
      try {
        var gir=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/naamkaran/post_list_by_cat_and_gender?category_id=8&gender=2"));
        if (gir.statusCode==200) {
             _ofGirl=Girlm.ofgi(jsonDecode(gir.body));
             notifyListeners();
        }
      } catch (e) {
        
      }
    }
}