import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  double paddingSize = 10.0;
  String pathImage = "";
  String titleCard = "Producto";

  @override
  Widget build(BuildContext context) {
    final cardTitle = Text(
      titleCard,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
      ),
    );

    final cardmoreFab = Positioned(
      bottom: paddingSize,
      right: paddingSize,
      child: SizedBox(
        width: 30.0,
        height: 30.0,
        child:FloatingActionButton(
        heroTag: "fab1_$titleCard",
        backgroundColor: Colors.deepOrange,
        child: Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
        onPressed: null,
      ),
      ),
    );

    final cardContainer = Container(
        height: 180.0,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(pathImage),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.amberAccent,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 0.0)
              )
            ]
        )
    );


    return Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
        child: Stack(
          children: <Widget>[
            cardContainer,
            Positioned(
              bottom: paddingSize*2,
              left: paddingSize*2,
              child: cardTitle,
            ),
            cardmoreFab,
          ],
        )
    );
  }
}