import 'package:flutter/material.dart';
import 'package:flutter_app_1/model/cat.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({
    super.key,
    required this.cat,
  });

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool isNameColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //cat image
      Image.network(
        widget.cat.imageLink,
      ),
      //cat name
      Text(
        widget.cat.name,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: isNameColored ? Colors.red[800] : Colors.black),
      ),
      //cat info
      Text('Origin: ${widget.cat.origin}'),
      Text('Max Wieght: ${widget.cat.maxWeight}'),
      Text('Min Wieght: ${widget.cat.minWeight}'),
      Text('Length: ${widget.cat.length}'),
      Text('Intelligence: ${widget.cat.intelligence}'),
      ElevatedButton(
          onPressed: () {
            setState(() {
              isNameColored = !isNameColored;
            });
          },
          child: Text('Change Name Color'))
    ]);
  }
}
