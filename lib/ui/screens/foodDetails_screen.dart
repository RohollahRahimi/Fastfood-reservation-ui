import 'package:flutter/material.dart';
import 'package:testt/core/data/data.dart';
import 'package:testt/ui/labels/addToCart_label.dart';
import 'package:testt/ui/widgets/arrowIcon.dart';

class FoodDetailsScreen extends StatefulWidget {
  int catId;
  FoodDetailsScreen({this.catId});

  @override
  _FoodDetailsScreenState createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int currenPage = 1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final _controller = new PageController();
    const _kDuration = const Duration(milliseconds: 300);
    const _kCurve = Curves.ease;

    @override
    Map categoryId =
        categoryData.firstWhere((data) => data["id"] == widget.catId);
    List foodDetails = categoryId["gallary"];
    List foodImages = foodDetails.map((image) {
      return Image.asset(
        image,
        fit: BoxFit.cover,
      );
    }).toList();

    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            ArrowIcon(
              icon: Icons.arrow_back_ios,
              onTap: () {
                _controller.previousPage(duration: _kDuration, curve: _kCurve);
              },
            ),
            Spacer(),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '$currenPage',
                  style: TextStyle(color: Colors.red, fontSize: 20)),
              TextSpan(
                  text: '/5',
                  style: TextStyle(color: Colors.black, fontSize: 17)),
            ])),
            Spacer(),
            ArrowIcon(
              icon: Icons.arrow_forward_ios,
              onTap: () {
                _controller.nextPage(duration: _kDuration, curve: _kCurve);
              },
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: height / 1.5,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currenPage = index + 1;
                  });
                },
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: foodImages.length,
                itemBuilder: (_, int index) {
                  return foodImages[index];
                }),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      categoryId["name"],
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      categoryId["price"],
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Spacer(),
                AddToCartLabel()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
