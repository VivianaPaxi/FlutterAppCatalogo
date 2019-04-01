import 'package:flutter/material.dart';
import 'package:catalogo_app/screens/home/widgets/grid_productos.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: GridProductos(),
    );
  }

}