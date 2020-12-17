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
        width: 160.0,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Hero(
              tag: _text,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  width: 160.0,
                  height: 180.0,
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
                width: 140.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Oats with Mango Slice and Cream',
                      style: TextStyle(
                        fontSize: 10.0,
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