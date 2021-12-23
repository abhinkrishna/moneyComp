import 'package:cash_tracker/src/config/themes.dart';
import 'package:cash_tracker/src/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var materialTheme = ConfigTheme();

    return GetMaterialApp(
      title: dotenv.env['APP_NAME'] ?? '',
      theme: materialTheme.appTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

