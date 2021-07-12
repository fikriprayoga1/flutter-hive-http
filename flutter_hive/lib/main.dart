import 'package:flutter/material.dart';
import 'package:flutter_hive/model/model_data.dart';
import 'package:flutter_hive/view/view_home.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'model/model_list_users.dart';

// run 'flutter packages pub run build_runner build --delete-conflicting-outputs' in your cmd to generate [file-name].g.dart

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive
    ..initFlutter()
    ..registerAdapter(ModelDataAdapter())
    ..registerAdapter(ModelListUsersAdapter());

  await initFunc();

  runApp(MyApp());
}

initFunc() async {
  await Hive.openBox('myBox'); // openBox must ensure init before
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}