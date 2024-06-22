import 'package:flutter/material.dart';
import 'package:flutter_app_1/model/cat.dart';
import 'package:flutter_app_1/widgets/cat_details.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cat.name,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red[800],
      ),
      body: CatDetailsWidget(
        cat: cat,
      ),
    );
  }
}
