import 'package:flutter/material.dart';
import 'package:testt/ui/labels/categoryTitle_label.dart';
import 'package:testt/ui/screens/foodDetails_screen.dart';

class CategoryCard extends StatelessWidget {
  String image;
  String title;
  int id;
  CategoryCard({this.image, this.title, this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return FoodDetailsScreen(
            catId: id,
          );
        }));
      },
      child: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.all(5),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              )),
          CategoryTitleLabel(
            title: title,
          )
        ],
      ),
    );
  }
}
