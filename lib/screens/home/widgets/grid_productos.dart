import 'package:flutter/material.dart';
import 'package:catalogo_app/screens/home/widgets/CardProduct.dart';

class GridProductos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(5.0),
      crossAxisSpacing: 5.0,
      crossAxisCount: 2,
      children: <Widget>[
        CardProduct(),
        CardProduct(),
        CardProduct(),
        CardProduct(),
      ],
    );
  }
}