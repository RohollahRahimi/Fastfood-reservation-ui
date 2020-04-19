import 'package:flutter/material.dart';
import 'package:testt/core/data/data.dart';
import 'package:testt/ui/cards/category_card.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    List categorylist = categoryData.map((data) {
      return CategoryCard(
        image: data["gallary"][0],
        title: data["title"],
        id: data["id"],
      );
    }).toList();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: height,
              child: ListView.builder(
                  itemCount: categorylist.length,
                  itemBuilder: (_, int index) {
                    return categorylist[index];
                  }),
            )
          ],
        ),
      ),
    );
  }
}
