import 'package:flutter/material.dart';

class CategoryTitleLabel extends StatelessWidget {
  String title;
  CategoryTitleLabel({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 40,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ));
  }
}
