import 'package:flutter/material.dart';
import 'package:flutter_hive/model/model_counter.dart';
import 'package:flutter_hive/model/model_list_users.dart';
import 'package:flutter_hive/util/screen_unit.dart';
import 'package:flutter_hive/viewmodel/viewmodel_home.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ViewHome extends StatelessWidget {
  ViewHome({Key? key}) : super(key: key);
  final ViewmodelHome viewmodelHome = ViewmodelHome();

  @override
  Widget build(BuildContext context) {
    ScreenUnit().init(context);
    viewmodelHome.getData(2);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: body(),
      ),
    );
  }

  Widget body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          fetchApi(),
          localTesting(),
        ],
      ),
    );
  }

  Widget fetchApi() {
    return Expanded(
      child: Center(
        child: ValueListenableBuilder(
          valueListenable: Hive.box('myBox').listenable(),
          builder: (context, box, widget) {
            var myBox = Hive.box('myBox');
            if (myBox.get(0) == null) {
              print('logInfo : Box is empty');
              return Text('Box is empty');
            } else {
              print('logInfo : box is not empty');
              int? totalPage = (myBox.get(0) as ModelListUsers).total_pages;
              return Text('Total Page is $totalPage');
            }
          },
        ),
      ),
    );
  }

  Widget localTesting() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          counterText(),
          SizedBox(
            height: ScreenUnit().height(100),
          ),
          addValueButton(),
        ],
      ),
    );
  }

  Widget counterText() {
    return ValueListenableBuilder(
      valueListenable: Hive.box('myBox').listenable(),
      builder: (context, box, widget) {
        var myBox = Hive.box('myBox');
        if (myBox.get('value') == null) {
          print('logInfo : Box is empty');
          return Text('Box is empty');
        } else {
          print('logInfo : Box is not empty');
          int? currentValue = (myBox.get('value') as ModelCounter).value;
          return Text('Current Value is $currentValue');
        }
      },
    );
  }

  Widget addValueButton() {
    return GestureDetector(
      onTap: () {
        viewmodelHome.addValue();
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(
          ScreenUnit().width(50),
          ScreenUnit().height(25),
          ScreenUnit().width(50),
          ScreenUnit().height(25),
        ),
        decoration: BoxDecoration(
          color: Colors.amber[800],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Add Value',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
