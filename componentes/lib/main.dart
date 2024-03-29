import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',

      // Quitamos el molesto debug que aparece arriba
      debugShowCheckedModeBanner: false,

      // home: HomePage(),
      // Definimos las rutas
      initialRoute: '/',
      routes: getAplicationRoutes(),

      // Para cuando no exista la ruta a la que se esta tratando de acceder
      onGenerateRoute: ( RouteSettings settings ) {
        return MaterialPageRoute( 
          builder: ( context ) => AlertPage()
        );
      },

    );
  }
}