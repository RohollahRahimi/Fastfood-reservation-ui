import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  String title;
  VoidCallback onTap;
  OrangeButton({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          margin: const EdgeInsets.all(12),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        onTap: onTap);
  }
}
