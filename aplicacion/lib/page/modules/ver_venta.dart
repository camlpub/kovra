import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class VerVentasScreen extends StatefulWidget {
  final dynamic data;

  @override
  _VerVentasScreenState createState() => _VerVentasScreenState();
  VerVentasScreen(this.data, {Key? key}) : super(key: key);
}

class _VerVentasScreenState extends State<VerVentasScreen> {
  List<dynamic> ventas = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchVentas();
  }

  Future<void> fetchVentas() async {
    final response = await http.post(
      Uri.parse(
          'https://onlinecommerce.com.co/kovra/?controller=venta&action=ver'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        'id_usuario': widget.data['id_crm'],
      }),
    );

    if (response.statusCode == 201) {
      setState(() {
        ventas = json.decode(response.body);
        isLoading = false;
      });
    } else {
      throw Exception('Error al cargar ventas');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Ventas'),
        backgroundColor: Colors.teal,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: ventas.length,
              itemBuilder: (context, index) {
                final venta = ventas[index];
                return VentaCard(venta: venta);
              },
            ),
    );
  }
}

class VentaCard extends StatelessWidget {
  final dynamic venta;

  VentaCard({required this.venta});

  double calcularTotalGlobal(List<dynamic> productos) {
    return productos.fold(
      0.0,
      (suma, producto) =>
          suma +
          (double.tryParse(producto['precio'].toString()) ?? 0.0) *
              (int.tryParse(producto['cantidad'].toString()) ?? 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    double totalGlobal = calcularTotalGlobal(venta['productos']);
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: ExpansionTile(
        title: Text(
          venta['nombre'],
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Celular: ${venta['celular']}"),
            Text("Dirección: ${venta['direccion']}"),
            Text("Tipo de venta: ${venta['tipo']}"),
            Text("Fecha de entrega: ${venta['fecha_entrega']}"),
            Text(
              "Total Global: \$${totalGlobal.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Observaciones:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(venta['observacion'] ?? "No hay observaciones"),
                SizedBox(height: 10),
                Text(
                  "Productos:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ...venta['productos'].map<Widget>((producto) {
                  double totalProducto = (double.tryParse(
                              producto['precio'].toString()) ??
                          0.0) *
                      (int.tryParse(producto['cantidad'].toString()) ?? 0);
                  return ListTile(
                    title: Text(
                        "${producto['nombre']} - \$${producto['precio']} x ${producto['cantidad']}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Descripción: ${producto['descripcion']}"),
                        Text(
                          "Total: \$${totalProducto.toStringAsFixed(2)}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                SizedBox(height: 10),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
