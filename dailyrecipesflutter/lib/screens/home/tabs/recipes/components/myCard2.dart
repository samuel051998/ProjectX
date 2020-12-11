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
    return SizedBox(
      width: 250.0,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 3.0,
        shadowColor: Colors.grey.withOpacity(0.3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: _text,
              child: Image(
                image: AssetImage(_imagePath),
                fit: BoxFit.fill,
              )
            )
          ],
        ),
      ),
    );
  }
}
