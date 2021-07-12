import 'package:flutter/material.dart';
import 'package:flutter_hive/model/model_list_users.dart';
import 'package:flutter_hive/viewmodel/viewmodel_home.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ViewHome extends StatelessWidget {
  ViewHome({Key? key}) : super(key: key);
  final ViewmodelHome viewmodelHome = ViewmodelHome();

  @override
  Widget build(BuildContext context) {
    viewmodelHome.getData(2);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: ValueListenableBuilder(
              valueListenable: Hive.box('myBox').listenable(),
              builder: (context, box, widget) {
                var myBox = Hive.box('myBox');
                if (myBox.get(0) == null) {
                  print('logInfo : box is empty');
                  return Text("Total Page is 0");
                } else {
                  print('logInfo : box is not empty');
                  var totalPage = (myBox.get(0) as ModelListUsers).total_pages;
                  return Text('Total Page is $totalPage');
                }
              }),
        ),
      ),
    );
  }
}
