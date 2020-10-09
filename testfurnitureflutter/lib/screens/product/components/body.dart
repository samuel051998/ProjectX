import 'package:flutter/material.dart';
import 'package:testfurnitureflutter/modals/product.dart';
import '../../../components/search_box.dart';
import '../../../constants.dart';
import 'category_list.dart';
import 'product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false, 
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
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
                      topRight: Radius.circular(40)
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {},
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}

