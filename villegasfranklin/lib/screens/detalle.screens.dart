import 'package:flutter/material.dart';

import '../models/peliculas.models.dart';

class DetalleScreen extends StatelessWidget {
  final Pelicula pelicula;
  TextStyle allsize = TextStyle(fontSize: 17);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 2, color: Colors.green),
    ),
  );

  DetalleScreen({Key? key, required this.pelicula}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pelicula.nombre),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(pelicula.imagen))),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                pelicula.categoria,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pelicula.nombre, style: allsize),
                  Text(
                    pelicula.fecha,
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 7, 7, 255)),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(pelicula.descripcion.toString(), style: allsize),
            Center(
                child: Container(
              child: ElevatedButton(
                child: Text(
                  'HECHO',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
