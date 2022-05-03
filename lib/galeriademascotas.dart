import 'package:flutter/material.dart';
import 'package:nava/galeriademascotas.dart';

void main(){
  runApp(MascotasApp());
}

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Veterinaria V2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaInicial());
  }
} // clase mascotas APP widget sin estado


}


class MascotasApp extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  PaginaInicialState createState() => PaginaInicialState();
} // Widget con estado

class PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/gato1.jpg",
    "assets/images/gato2.jpg",
    "assets/images/perro1.jpg",
    "assets/images/gato1.jpg",
    "assets/images/gato2.jpg",
    "assets/images/perro1.jpg",
    "assets/images/gato1.jpg",
    "assets/images/gato2.jpg",
    "assets/images/perro1.jpg",
    "assets/images/gato1.jpg",
    "assets/images/gato2.jpg",
    "assets/images/perro1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }