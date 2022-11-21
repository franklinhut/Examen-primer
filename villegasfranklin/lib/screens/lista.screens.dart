import 'package:flutter/material.dart';
import '../models/bakend.dart';
import '../models/peliculas.models.dart';
import 'detalle.screens.dart';
import '../widgets/Pelicula.widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  void longPress(Pelicula pelicula) {
    setState(() {
      Backend().markLaptopAsRead(pelicula.id);
    });
  }

  void swipe(Pelicula pelicula) {
    setState(() {
      Backend().deletePelicula(pelicula.id);
    });
  }

  void ontap(Pelicula pelicula, context) {
    setState(() {
      Backend().markLaptopAsRead(pelicula.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DetalleScreen(pelicula: pelicula)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getPelicula()
          .map((pelicula) => PeliculaWidget(
                pelicula: pelicula,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}
