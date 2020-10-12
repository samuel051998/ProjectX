import 'package:flutter/material.dart';
import 'package:testfurnitureflutter/constants.dart';
import 'color_dots.dart';
import 'list_of_colors.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
          child: Column(
            children: <Widget>[
              ProductPoster(
                size: size,
                image: 'assets/images/Item_2.png',
              ),
              ListOfColors()
            ],
          ),
        )
      ],
    );
  }
}