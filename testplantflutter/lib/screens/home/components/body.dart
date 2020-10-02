import 'package:flutter/material.dart';
import 'package:testplantflutter/constants.dart';
import 'featured_plants.dart';
import 'header_with_search_box.dart';
import 'recomends_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provise us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: (){}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}