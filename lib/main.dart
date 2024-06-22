import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/cat_details_screen.dart';
import 'package:flutter_app_1/data/all_cats.dart';
import 'package:flutter_app_1/model/cat.dart';
import 'package:flutter_app_1/screens/cats_home_screen.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CatsHomeScreen());
  }
}
