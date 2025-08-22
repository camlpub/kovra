// ignore_for_file: empty_constructor_bodies

import 'package:camltasks/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'inicio.dart';

class UserScreen extends StatelessWidget {
  final dynamic data;
  final dynamic funcion;

  const UserScreen(this.data,this.funcion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bienvenido ${data['nombre']}',
          ),
          shadowColor: Colors.white,
          backgroundColor: Colors.orange,
          actions: <Widget>[
            PopupMenuButton(
              // Ejemplo de uso de menú desplegable
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: const Row(
                    children: [
                      Icon(
                          Icons.keyboard_return), // Icono que deseas mostrar
                      SizedBox(
                          width: 8), // Espacio entre el icono y el texto
                      Text('Volver atras'),
                      // Texto de la opción
                    ],
                  ),
                  onTap: () {
                    // Acción al presionar la opción 1
                    // Volver atrás a la pantalla principal
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InicioScreen(data),
                      ),
                    );  
                                      },
                ),
                PopupMenuItem(
                  child: const Row(
                    children: [
                      Icon(Icons.dashboard), // Icono que deseas mostrar
                      SizedBox(width: 8), // Espacio entre el icono y el texto
                      Text('Administrar'), // Texto de la opción
                    ],
                  ),
                  onTap: () {
                    // Acción al presionar la opción 2
                    // Acción al presionar la opción 1
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Mensaje'),
                          content: const Text(
                              'Aun no se cuenta con esta funcionalidad'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cerrar'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.push(
                  context,

                  MaterialPageRoute(
                      builder: (context) =>
                          login_page()), // Cambiar 'InicioScreen' por el nombre de tu clase de la nueva vista
                ); // Cambiar 'InicioScreen' por el nombre de tu clase de la nueva vista
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Has cerrado sesión correctamente'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
