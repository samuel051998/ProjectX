import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

import 'detailCard.dart';

class MyCardLong extends StatelessWidget {
  final String _imagePath;
  final String _text;

  MyCardLong(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: contentCard(),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailCard(_imagePath, _text),
          ),
        );
      },
    );
  }

  Widget contentCard() {
    return SizedBox(
      width: 300.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        elevation: 3.0,
        shadowColor: Colors.grey.withOpacity(0.3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(22.0)),
                    image: DecorationImage(
                      image: AssetImage(_imagePath),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
              tag: _text,
            ),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Text(
                      'In Breakfast',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 8.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      _text,
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'No added sugar for this shake, help to mantain body energy',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 8.5,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: kTextColor,
                                size: 14.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '10 min.',
                                  style: TextStyle(
                                    fontSize: 7.0,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: kTextColor,
                                size: 14.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '10 min.',
                                  style: TextStyle(
                                    fontSize: 7.0,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.star_border,
                                color: kTextColor,
                                size: 14.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  '4.9',
                                  style: TextStyle(
                                    fontSize: 7.0,
                                    color: kTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}