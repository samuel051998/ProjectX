import 'package:flutter/material.dart';
import 'detailCard.dart';

class MyCardShort extends StatelessWidget {
  final String _imagePath;
  final String _text;

  MyCardShort(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: contentCard(),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailCard(_imagePath, _text)));
      },
    );
  }

  Widget contentCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        width: 180.0,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Hero(
              tag: _text,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  width: 180.0,
                  height: 220.0,
                  image: AssetImage(_imagePath),
                  fit: BoxFit.cover,
                ),
              )
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: Icon(Icons.save),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 160.0,
                height: 90.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Oats with Mango Slice and Cream',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
             ),
            ),
          ]
        ),
      ),
    );
  }
}

/*
import 'package:flutter/material.dart';
import 'detailCard.dart';

class MyCard2 extends StatelessWidget {
  final String _imagePath;
  final String _text;

  MyCard2(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: contentCard(),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailCard(_imagePath, _text)));
      },
    );
  }

  Widget contentCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 170.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Hero(
                  tag: _text,
                  child: Image(
                    width: 170.0,
                    height: 198.0,
                    image: AssetImage(_imagePath),
                    fit: BoxFit.cover,
                  )
                )
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    width: 150.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                  ),
                )
              ),
            ],
          ),
        ]
      ),
    );
  }
}
*/