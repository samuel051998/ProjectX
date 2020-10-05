import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'detail_buttons.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
          DetailButtons(size: size),
          SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}