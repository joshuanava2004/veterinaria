import 'package:flutter/material.dart';

void main() {
  runApp(MascotasApp());
}

class MascotasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Veterinaria',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaInicial());
  }
} // clase mascotas APP widget sin estado


}
