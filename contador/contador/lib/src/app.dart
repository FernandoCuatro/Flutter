// contendra toda la logica
// importamos
import 'package:flutter/material.dart';

import 'package:contador/src/pages/home_page.dart';

// todos los windget son clases comunes y corrientes
class MyApp extends StatelessWidget {
  // sobreescribimos el metodo build 
  // el context contiene la informacion del arbol de windget
  @override
  Widget build( context ) {
    // permite la configuracion global de la app
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ), 
    );
  }
}