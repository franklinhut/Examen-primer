import 'package:flutter/cupertino.dart';

class Pelicula {
  final int id;
  final String nombre;
  final String categoria;
  final String fecha;
  final String descripcion;
  final String imagen;
  bool read;

  Pelicula({
    required this.id,
    required this.nombre,
    required this.categoria,
    required this.fecha,
    required this.descripcion,
    required this.imagen,
    this.read = false,
  });
}
