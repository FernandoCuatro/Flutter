// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:formvalidation/src/models/producto_model.dart';
import 'package:formvalidation/src/providers/productos_provider.dart';
// import 'package:formvalidation/src/bloc/provider.dart';

class HomePage extends StatelessWidget {

  // El provider donde se maneja la informacion a base de datos
  final productosProvider = ProductosProvider();

  @override
  Widget build(BuildContext context) {
    // La clase creada anteriormente
    // Tenemos acceso a todos los metodos y propiedades que estan definidos en el bloc
    // final bloc = Provider.of( context );

    return Scaffold(
      appBar:AppBar(
        // Obteniendo la informacion del bloc aqui tambien
        title: Text('Inicio')
      ),

      // Text('Email: ${ bloc?.email } '),
      // Divider(),
      // Text('Password: ${ bloc?.password }')

      body: _crearListado(),

      // Boto para crear un nuevo producto
      floatingActionButton: _crearBoton( context ),
    );
  }

  // Listamos la informacion desde base de datos
  Widget _crearListado() {
    return FutureBuilder(
      future: productosProvider.cargarProductos(),
      builder: (BuildContext context, AsyncSnapshot<List<ProductoModel>> snapshot) {
        // Validacion por si tiene los datos cargados o no
        if( snapshot.hasData ) {

          return Container();

        } else {
          // Retornamos un indicador de carga
          return Center( child: CircularProgressIndicator() );
        }
      },
    );
  }
  
  Widget _crearBoton( context ) {
    return FloatingActionButton(
      child: Icon( Icons.add ),
      // Cambiamos el color a la aplicacion
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      onPressed: () => Navigator.pushNamed(context, 'producto'),
    );
  }
}