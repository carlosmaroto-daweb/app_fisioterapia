import 'package:fisioterapia/ui/home_page.dart';
import 'package:flutter/material.dart';

/*
v1.0.0+1
  1.  Creada estructura general de la aplicación, así como sus directorios internos siguiendo la estructura de aplicaciones Área 14.
      Realizado por: Miguel Ángel.
      Fecha: 17/10/2023
  2.  Importados recursos externos assets, para la carga de la imagenes, iconos, logotipos de los que se hace uso en la aplicación según el diseño realizado previamente.
      Archivos afectados:
        - assets/icons/
        - assets/img/
        - assets/logos/
      Realizado por: Miguel Ángel
      Fecha: 18/10/2023 09:56h.
  3.  
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Área 14 fisioaterapia',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
