import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class RatingLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Color(0xFFF6BD0F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: kTextColor,
            size: 18.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3.0),
            child: Text(
              '4.9',
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
