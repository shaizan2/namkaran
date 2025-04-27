import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/modal/girlc.dart';
import 'package:http/http.dart'as http;
class Girlchrcontroller extends ChangeNotifier {
  List<Girlc>? _ofgc;
  List<Girlc>? get ofgc =>_ofgc;
 void getchr()async{
  try {
    var chr=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/naamkaran/post_list_by_cat_and_gender?category_id=10&gender=2"));
    if (chr.statusCode==200) {
      _ofgc=Girlc.ofgrc(jsonDecode(chr.body));
      notifyListeners();

    }
  } catch (e) {
    
  }
 }
}