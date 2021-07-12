import 'package:flutter/material.dart';
import 'package:flutter_hive/model/model_list_users.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:mobx/mobx.dart';
part 'viewmodel_home.g.dart';

class ViewmodelHome = _ViewmodelHome with _$ViewmodelHome;

abstract class _ViewmodelHome with Store {
  late BuildContext context;

  getData(int page) async {
    try {
      var url = Uri.parse('https://reqres.in/api/users/?page=2');
      Response response = await http.get(url);
      print('logInfo : ${response.body}');
      ModelListUsers modelListUsers =
          ModelListUsers.fromJson(jsonDecode(response.body));

      var box = await Hive.openBox('myBox');

      await box.add(modelListUsers);
      print(
          'logInfo : first_name in array index 0 in database is ${(box.getAt(0) as ModelListUsers).data?[0]?.first_name}');
      print(
          'logInfo : first_name in array index 0 from API is ${modelListUsers.data?[0]?.first_name}');
    } catch (e) {
      print(e);
    }
  }
}
