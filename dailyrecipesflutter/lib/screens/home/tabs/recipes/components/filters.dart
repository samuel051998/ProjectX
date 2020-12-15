import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool isPress = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(11.0),
          children: <Widget>[
            RaisedButton(
              color: isPress ? Color(0xFFFEC841) : Color(0xFFF7F5DA),
              onPressed: () => setState(() => isPress = !isPress), 
              child: Container(
                width: 200.0,
                height: 70.0,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF7F5DA),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2),
                            BlendMode.dstATop
                          ),
                          image: AssetImage(
                            'assets/images/icon/breakfast.png',
                          )
                        )
                      ),
                    ),
                    Text(
                      'Breakfast',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: kTextColor
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        )
      ],
    );
  }
}