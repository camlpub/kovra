// ignore_for_file: camel_case_types

import 'package:camltasks/page/login_page.dart';
import 'package:camltasks/page/modules/ver_pedido.dart';
import 'package:camltasks/page/modules/ver_venta.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'iframe.dart';
import 'user.dart';
import './modules/crea_venta.dart';

class InicioScreen extends StatelessWidget {
  final dynamic data;

  const InicioScreen(this.data, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'KOVRA',
            
          ),
          shadowColor: Colors.teal,
          backgroundColor: Colors.teal,
          actions: <Widget>[

            PopupMenuButton(
              // Ejemplo de uso de menú desplegable
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  child: Row(
                    children: [
                      const Icon(
                          Icons.account_circle), // Icono que deseas mostrar
                      const SizedBox(
                          width: 8), // Espacio entre el icono y el texto
                      Text('Perfil ${data['nombre']}'),
                      // Texto de la opción
                    ],
                  ),
                  onTap: () {
                    // Acción al presionar la opción 1
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Ingresaste a perfil de usuario ${data['nombre']}'),
                      ),
                    );


                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserScreen(data,InicioScreen),
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
                              'No tienes permiso para entrar a esta función'),
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
        body:
         Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/fondo_backgroud.jpg'), // Reemplaza con la ruta de tu imagen
              fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
            ),
          ),
          child:
         ListView(
          children: [ 

            if(data['rol'] == "1") ...[


            Card(
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Bienvenido a ingresar una venta en KOVRA'),
                    ),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistroVentaScreen(data),
                    ),
                  );  
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Color gris suave
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ingresar orden de compra',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Crea una orden de compra de manera facil.',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Card(
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Bienvenido a ver tus ventas'),
                    ),
                  );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerVentasScreen(data),
                      ),
                    );  
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mis ordenes de compra',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Revisa tus ordenes de compra aqui',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            ],

            if(data['rol'] == "2") ...[

            Card(
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Bienvenido a ver tus domicilios del día.'),
                    ),
                  );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerPedidosScreen(data),
                      ),
                    );  
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[200],
                  ),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mis pedidos',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Revisa tus pedidos aqui',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),





            // Card(
            //   child: InkWell(
            //     onTap: () {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(
            //           content: Text('Bienvenido a la aplicación ventas'),
            //         ),
            //       );
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const ModernIframeWidget(
            //             url: 'http://tasks1.epizy.com/contable/index.php',
            //             titulo: 'Aplicación contable',
            //           ),
            //         ),
            //       );
            //     },
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10.0),
            //         image: const DecorationImage(
            //           image: AssetImage(
            //               'lib/images/finanzas.jpg'), // Reemplaza 'background_image.jpg' con la ruta de tu imagen de fondo
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       child: const Center(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'Contable',
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             SizedBox(height: 8),
            //             Text(
            //               'Ingresa a tu pagina oficial contable',
            //               style: TextStyle(
            //                 color: Colors.orange,
            //                 fontSize: 16,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   child: InkWell(
            //     onTap: () {
            //       ScaffoldMessenger.of(context).showSnackBar(
            //         const SnackBar(
            //           content: Text('Bienvenido a la aplicación ANOTACIONES'),
            //         ),
            //       );
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const ModernIframeWidget(
            //             url: 'http://camltasks1.epizy.com/ANOTACIONES',
            //             titulo: 'Aplicación Anotaciones',
            //           ),
            //         ),
            //       );
            //     },
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10.0),
            //         image: const DecorationImage(
            //           image: AssetImage(
            //               'lib/images/anotaciones.jpg'), // Reemplaza 'background_image.jpg' con la ruta de tu imagen de fondo
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //       child: const Center(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text(
            //               'Anotaciones',
            //               style: TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 24,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             SizedBox(height: 8),
            //             Text(
            //               'Ingresa a tu pagina oficial de ANOTACIONES',
            //               style: TextStyle(
            //                 color: Colors.orange,
            //                 fontSize: 16,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            ],
          ],
        ),
      ),
      ),
    );
  }

  // ignore: unused_element
  _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'No se pudo abrir la URL $url';
    }
  }
}
