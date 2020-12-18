import 'package:flutter/material.dart';
import 'package:dailyrecipesflutter/constants.dart';

class DetailCard2 extends StatefulWidget {
  final String imagePath;
  final String text;
  DetailCard2(this.imagePath, this.text);

  @override
  _DetailCardState2 createState() => _DetailCardState2(imagePath, text);
}

class _DetailCardState2 extends State<DetailCard2> {
  final String _imagePath;
  final String _text;
  double hf = 0.67;

  _DetailCardState2(this._imagePath, this._text);

  @override
  Widget build(BuildContext context) {
    debugPrint(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: hf,
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DraggableScrollableSheet(
              initialChildSize: 1 - hf + 0.05,
              minChildSize: 1 - hf + 0.05, //to get full size of background image, remove this and the container will drag bottom of the initialChildSize
              maxChildSize: hf,
              builder: (context, controller) {
                return Container(
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )
                  ),
                  child: ListView.builder(
                    itemCount: 15,
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
    );
  }
}