import 'package:flutter/material.dart';

class ArrowIcon extends StatelessWidget {
  IconData icon;
  VoidCallback onTap;
  ArrowIcon({this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          margin: const EdgeInsets.all(10),
          width: 50,
          height: 50,
          decoration:
              BoxDecoration(shape: BoxShape.circle, 
              color: Colors.orange),
          child: Icon(
            icon,
            size: 37,
          )),
    );
  }
}
