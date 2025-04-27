import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/modal/boyc.dart';
 import 'package:http/http.dart'as http;
class Chricontroller extends ChangeNotifier {
  List <BoyC>? _ofchr;
   List <BoyC>? get ofchr=>_ofchr;
  void getChris()async{
    try {
      var chri=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/naamkaran/post_list_by_cat_and_gender?category_id=10&gender=1"));
      if (chri.statusCode==200) {
        _ofchr=BoyC.ofchris(jsonDecode(chri.body));
        notifyListeners();
      }
    } catch (e) {
      
    }
  }
}