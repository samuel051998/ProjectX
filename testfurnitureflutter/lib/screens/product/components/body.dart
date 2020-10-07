import 'package:flutter/material.dart';
import '../../../components/search_box.dart';
import '../../../constants.dart';
import 'category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(),
        Categorylist(),
        SizedBox(height: kDefaultPadding / 2),
        Expanded(
            child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
            ),
            ProductCard(),
          ],
        ))
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: kBlueColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(22)),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(
                'assets/images/Item_1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: 136,
              width: size.width - 200,
            ),
          ),
        ],
      ),
    );
  }
}
