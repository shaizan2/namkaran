import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:naamakaran_applications_1/modal/girl.dart';
import 'package:http/http.dart'as http;
class Girlcontroller extends ChangeNotifier {
  List<Girl>? _ofData;
  List<Girl>? get ofData=>_ofData;
  void getdata ()async{
try {
  var resp=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/naamkaran/post_list_by_cat_and_gender?category_id=3&gender=2"));
  if (resp.statusCode==200) {
    _ofData=Girl.ofgirl(jsonDecode(resp.body));
    notifyListeners();
  }
} catch (e) {
  
}
  }
}