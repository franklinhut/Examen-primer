import 'dart:ui';

import 'peliculas.models.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }
  Backend._internal();
  final _peliculas = [
    Pelicula(
        id: 1,
        nombre: 'Rapidos y furiosos',
        categoria: 'accion',
        fecha: 'octubre 2022',
        descripcion: 'son carreras ilegales realizadas por el grupo de toretto',
        imagen: 'assets/01.jpg'),
    Pelicula(
        id: 2,
        nombre: 'kung fu panda',
        categoria: 'infantil',
        fecha: 'septiembre 2022',
        descripcion:
            'un panda que aprende kung fu para poder proteger a toda su aldea',
        imagen: 'assets/02.jpg'),
    Pelicula(
        id: 1,
        nombre: 'venom',
        categoria: 'ciencia ficcion',
        fecha: 'enero 2022',
        descripcion:
            'un sinvionte llega a la tierra y se une con el periodista brock para no morir y asi forman venom',
        imagen: 'assets/03.jpg'),
    Pelicula(
        id: 1,
        nombre: 'black adam',
        categoria: 'ciencia ficcion',
        fecha: 'febrero 2022',
        descripcion:
            'un faraon es portador de el heroe shazam pero al morir sacrificado por su pueblo por un error es pasado al padre del faraon volviendose un antiheroe',
        imagen: 'assets/04.jpg'),
    Pelicula(
        id: 1,
        nombre: 'liga de la justicia',
        categoria: 'accion',
        fecha: 'octubre 2022',
        descripcion:
            'un grupo de talentosos super humanos forman un grupo de heroes para poder acabar con una amenaza alenigena que amenaza con destruir el planta tierra',
        imagen: 'assets/05.jpg'),
  ];

  List<Pelicula> getPelicula() {
    return _peliculas;
  }

  void markLaptopAsRead(int id) {
    final index = _peliculas.indexWhere((pelicula) => pelicula.id == id);
    _peliculas[index].read = true;
  }

  void deletePelicula(int id) {
    _peliculas.removeWhere((pelicula) => pelicula.id == id);
  }
}
