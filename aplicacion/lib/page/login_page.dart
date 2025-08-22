// ignore_for_file: camel_case_types, unused_import

import 'dart:convert';
import 'package:flutter/material.dart';
import 'inicio.dart';
import 'package:http/http.dart' as http;



// ignore: must_be_immutable
class login_page extends StatelessWidget {
  login_page({Key? key}) : super(key: key);

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  dynamic dataresponse;
  dynamic nombre;
  dynamic id;
  dynamic id_crm;
  dynamic rol;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'KOVRA',
          style: TextStyle(
            color: Colors.white, // Color naranja
          ),
        ),
        centerTitle: true, // Centra el texto en la AppBar
      ),
      body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/fondo_backgroud.jpg'),
                fit: BoxFit.cover, // Ajusta la imagen para que cubra todo el fondo
              ),    
          ),  
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'lib/images/kovra_logo.png',
                  //   width: 100,
                  //   height: 100,
                  // ),
                  // const SizedBox(
                  //     height: 10), // Espacio entre la imagen y el texto
                  // const Text(
                  //   'Bienvenido a KOVRA ingresa tus credenciales.',
                  //   style: TextStyle(
                  //     fontSize: 16,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  const SizedBox(height: 50),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: 'Usuario',
                      hintStyle: const TextStyle(color: Colors.teal), // Color del texto de ayuda (hint)
                      prefixIcon: const Icon(Icons.person, color: Colors.teal), // Color del ícono
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.teal), // Borde blanco cuando no está enfocado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.teal, width: 2.0), // Borde blanco al enfocarse
                      ),
                    ),
                    style: const TextStyle(color: Colors.teal), // Color del texto ingresado
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      hintStyle: const TextStyle(color: Colors.teal), // Color del texto de ayuda (hint)
                      prefixIcon: const Icon(Icons.lock, color: Colors.teal), // Color del ícono
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.teal), // Borde blanco cuando no está enfocado
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.teal, width: 2.0), // Borde blanco al enfocarse
                      ),
                    ),
                    style: const TextStyle(color: Colors.teal), // Color del texto ingresado
                  ),

                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible:
                            false, // Evita que se cierre al tocar fuera del diálogo
                        builder: (BuildContext context) {
                          return const Center(
                            child:
                                CircularProgressIndicator(), // Indicador de carga circular
                          );
                        },
                      );

                      final username = _usernameController.text.trim();
                      final password = _passwordController.text.trim();

                      if (username.isEmpty || password.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                'Por favor, ingrese su usuario y contraseña'),
                          ),
                        );
                        return;
                      }

                      // Realiza la solicitud HTTP POST al archivo PHP
                      http.post(
                        Uri.parse('https://onlinecommerce.com.co/kovra/?controller=usuarios&action=login'),
                        body:  jsonEncode({
                          "parameters": {
                            "usuario": username,
                            "contra": password,
                          }
                        })).then((response) {
                        Navigator.pop(context);
                        if (response.statusCode == 201) {
                          // Si la solicitud es exitosa, verifica la respuesta
                          dynamic data = json.decode(response.body);
                          data = data[0];

                          if (data['id'] != 0) {
                            // Usuario autenticado, redirige a la pantalla de inicio
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Bienvenido ${data['nombre']}'),
                              ),
                            );

                            nombre = data['nombre'];
                            id_crm = data['id_crm'];
                            id = data['id'];
                            rol = data['rol'];

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InicioScreen(data),
                              ),
                            );
                          } else {
                            // Usuario o contraseña incorrectos
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Usuario o contraseña incorrectos'),
                              ),
                            );
                          }
                        } else {
                          // Error en la solicitud HTTP
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Error en la solicitud HTTP'),
                            ),
                          );
                        }
                      }).catchError((error) {
                        // Error al realizar la solicitud HTTP
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Error al realizar la solicitud HTTP: $error'),
                          ),
                        );
                      });
                    },
                    child: const Text('Entrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white, // Color de fondo del footer
          child: SizedBox(
            height: 50.0, // Altura del footer
            child: Center(
              child: Text(
                '© ${DateTime.now().year} Camltasks - Todos los derechos reservados Desarrollado por Carlos Alejandro Maldonado López.',
                style: const TextStyle(
                  color: Colors.black, // Color del texto
                ),
              ),
            ),
          )),
    );
  }
}
