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
                  height: 220.0,
                  image: AssetImage(_imagePath),
                  fit: BoxFit.cover,
                ),
              )
            ),
            /*Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: Icon(Icons.save),
                color: Colors.black,
                onPressed: () {},
              ),
            ),*/
            Container(
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                 alignment: Alignment.topLeft, 
                  child: Column(
                    children: <Widget>[
                      Text(
                        _text,
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
              ),
             ),
          ]
        ),
      ),
    );
  }
}