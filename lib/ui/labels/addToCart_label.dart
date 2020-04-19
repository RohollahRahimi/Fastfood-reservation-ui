import 'package:flutter/material.dart';
import 'package:testt/ui/screens/incompelete_screen.dart';

class AddToCartLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return IncompeleteScreen();
        }));
      },
      child: Container(
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.orange,
        ),
        child: Center(
          child: Text('Add to Cart'),
        ),
      ),
    );
  }
}
