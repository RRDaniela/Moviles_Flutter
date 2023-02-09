import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  final String day;
  final String image;
  final String name;
  ItemActividad(
      {super.key, required this.day, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            child: Image.network("$image"),
          ),
          Text("$day", style: TextStyle(fontSize: 11)),
          Text("$name"),
        ],
      ),
    );
  }
}
