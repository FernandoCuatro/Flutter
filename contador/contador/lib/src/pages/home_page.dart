// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


// una clase de toda la vida pero es un windget
class HomePage extends StatelessWidget {

  // estilo personalizado que haga el texto mas grande
  final estiloTexto = TextStyle( fontSize: 30 );

  // la variable para contar
  final conteo = 10;

  @override
  Widget build( BuildContext context ) {
    // Scaffold, basicamente es algo que cubre toda la pantalla que se puede establecer cosas como la cosa de arriba, un boton un menu, etc 
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks:', style: estiloTexto ),
            Text( '$conteo' , style: estiloTexto ), // interpolacion de string con el $
          ],
        ),
      ),

      // para cambiar la posicion del boton
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // para agregar un boton en HD
      floatingActionButton: FloatingActionButton(
        // si lo mandas el onPressed en null es como que el boton esta desabilitado
        onPressed: () { // () {} es una funcion anonima
          // print('Hola mundo'); para salida en consola
          // conteo++;
        } , 

        // tambien tenemos el hijo
        child: Icon( Icons.add ), // se puede mostrar un texto tranquilamente Text('+')
      ),

    );
  }
}