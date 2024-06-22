import 'package:flutter/material.dart';
import 'package:flutter_app_1/main.dart';
import 'package:flutter_app_1/widgets/cat_card.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Cats',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red[800],
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black,
                ))
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final cat = cats[index];
            return CatCard(cat: cat);
          },
        ));
  }
}
