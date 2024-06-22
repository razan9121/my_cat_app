import 'package:flutter/material.dart';
import 'package:flutter_app_1/model/cat.dart';
import 'package:flutter_app_1/screens/cat_details_screen.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
          child: Column(
        children: [
          // cat image
          Expanded(
              child: Image.network(
                  width: double.infinity, fit: BoxFit.cover, cat.imageLink)),
          // cat name
          Text(
            cat.name,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red[900]),
          )
        ],
      )),
    );
  }
}
