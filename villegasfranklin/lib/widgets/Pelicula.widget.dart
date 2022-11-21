import 'package:flutter/material.dart';

import '../models/peliculas.models.dart';

class PeliculaWidget extends StatelessWidget {
  final Pelicula pelicula;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle allsize = TextStyle(fontSize: 15);

  PeliculaWidget({
    Key? key,
    required this.pelicula,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onLongPress: () => longPress(pelicula),
        onHorizontalDragEnd: (detalles) => swipe(pelicula),
        onTap: () => ontap(
              pelicula,
              context,
            ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 7, 243, 255)),
            ),
          ),
          margin: EdgeInsets.all(10.0),
          child: Row(children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: pelicula.read
                    ? Colors.blueGrey
                    : Color.fromARGB(255, 229, 255, 34),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pelicula.categoria, style: allsize),
                  Text(pelicula.nombre,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(pelicula.fecha, style: allsize),
                ],
              ),
            ),
          ]),
        ));
  }
}
