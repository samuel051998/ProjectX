import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatefulWidget {
  final String imagePath;
  final String text;
  DetailCard(this.imagePath, this.text);

  @override
  _DetailCardState createState() => _DetailCardState(imagePath, text);
}

class _DetailCardState extends State<DetailCard> {
  final String _imagePath;
  final String _text;

  _DetailCardState(this._imagePath, this._text);
  
  @override
  Widget build(BuildContext context) {
    //screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: kBackgroundColor,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  child: Hero(
                    child: Image(
                      image: AssetImage(_imagePath),
                      width: double.infinity,
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.dst,
                      color: Colors.black,
                    ),
                    tag: _text,
                  ),
                ),
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.55,
                maxChildSize: 0.9,
                minChildSize: 0.55,
                builder: (context, controller) {
                  return Container(
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )
                    ),
                    child: ListView.builder(
                      itemCount: 25,
                      controller: controller,
                      itemBuilder: (BuildContext context, index) {
                        return ListTile(
                          title: Text('Item ${index+1}'),
                        );
                      }
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}