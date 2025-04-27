import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/modal/boy.dart';
import 'package:http/http.dart'as http;

class Boycontroller extends ChangeNotifier {
  List<Boy>? _ofdata;
  List<Boy>? get ofdata=> _ofdata;
  void getVide()async{
    try {
      var res=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/naamkaran/post_list_by_cat_and_gender?category_id=3&gender=1"));
      if (res.statusCode==200) {
        _ofdata=Boy.ofboy(jsonDecode(res.body));
        notifyListeners();
      }
    } catch (e) {
      
    }
  }





}