import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class VerPedidosScreen extends StatefulWidget {
  final dynamic data;
  @override
  _VerPedidosScreenState createState() => _VerPedidosScreenState();
  VerPedidosScreen(this.data, {Key? key}) : super(key: key);
}

class _VerPedidosScreenState extends State<VerPedidosScreen> {
  List<dynamic> pedidos = [];
  List<dynamic> pedidosFiltrados = [];
  bool isLoading = true;
  String estadoSeleccionado = 'Todos';
  final List<String> estadosFiltro = ['Todos', 'Asignado','Entregado', 'Pendiente', 'Devuelto', 'Reprogramar'];

  @override
  void initState() {
    super.initState();
    fetchPedidos();
  }

  Future<void> fetchPedidos() async {

  
      final response = await http.post(
      Uri.parse('https://onlinecommerce.com.co/kovra/?controller=pedido&action=ver'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        'id_usuario': widget.data['id_crm'],
      }),
    );
    if (response.statusCode == 201) {
      setState(() {
        pedidos = json.decode(response.body);
        filtrarPedidos();
        isLoading = false;
      });
    } else {
      throw Exception('Error al cargar pedidos');
    }
  }

  void filtrarPedidos() {
    setState(() {
      if (estadoSeleccionado == 'Todos') {
        pedidosFiltrados = pedidos;
      } else {
        pedidosFiltrados = pedidos.where((pedido) => pedido['estado'] == estadoSeleccionado).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial de Pedidos'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text('Filtrar por estado:', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 10),
                DropdownButton<String>(
                  value: estadoSeleccionado,
                  items: estadosFiltro.map((String estado) {
                    return DropdownMenuItem<String>(
                      value: estado,
                      child: Text(estado),
                    );
                  }).toList(),
                  onChanged: (String? nuevoEstado) {
                    setState(() {
                      estadoSeleccionado = nuevoEstado!;
                      filtrarPedidos();
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                :         Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/fondo_backgroud.jpg'), // Reemplaza con la ruta de tu imagen
              fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
            ),
          ),
          child: ListView.builder(
                    padding: const EdgeInsets.all(10.0),
                    itemCount: pedidosFiltrados.length,
                    itemBuilder: (context, index) {
                      final pedido = pedidosFiltrados[index];
                      return PedidoCard(pedido,widget.data);
                    },
                  ),
          ),
          ),
        ],
      ),
    );
  }
}

class PedidoCard extends StatelessWidget {
  final dynamic pedido;
  final dynamic data;

  PedidoCard(this.pedido, this.data);

  final List<String> estados = ['Entregado', 'Pendiente', 'Devuelto', 'Reprogramar'];

  Future<void> enviarEstado(BuildContext context, String estado, String idOrden) async {
    try {
      final response = await http.post(
        Uri.parse('https://onlinecommerce.com.co/kovra/?controller=pedido&action=editar'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "parameters": {
            "id_orden": idOrden,
            "estado": estado,
          }
        }),
      );

      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Estado actualizado a: $estado')));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerPedidosScreen(data),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Error al actualizar el estado')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error en la solicitud: $e')));
    }
  }

  void mostrarModal(BuildContext context, String idOrden) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Selecciona el estado de la orden', style: TextStyle(fontSize: 18)),
              ...estados.map((estado) {
                return ListTile(
                  title: Text(estado),
                  onTap: () {
                    Navigator.pop(context);
                    enviarEstado(context, estado, idOrden);
                  },
                );
              }).toList(),
            ],
          ),
        );
      },
    );
  }

@override
Widget build(BuildContext context) {
  double totalGlobal = 0;

  // Verifica si hay productos antes de continuar
  if (pedido['productos'] == null || pedido['productos'].isEmpty) {
    print("No hay productos en el pedido ${pedido['id']}");
    return const SizedBox(); // Si no hay productos, devuelve un widget vacío
  }

  List<Widget> productosList = pedido['productos'].map<Widget>((producto) {
    // Manejo de valores nulos para cantidad y precio
    double precio = double.tryParse(producto['precio']?.toString() ?? '0') ?? 0;
    int cantidad = int.tryParse(producto['cantidad']?.toString() ?? '1') ?? 1;
    double totalPorProducto = precio * cantidad;

    // Sumar al total global
    totalGlobal += totalPorProducto;

    return ListTile(
      title: Text("${producto['nombre']} - \$${precio.toStringAsFixed(2)} x $cantidad"),
      subtitle: Text("Total: \$${totalPorProducto.toStringAsFixed(2)}"),
    );
  }).toList();

  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    elevation: 5,
    child: ExpansionTile(
      title: Text(
        pedido['nombre'],
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Teléfono: ${pedido['celular']}"),
          Text("Dirección: ${pedido['direccion']}"),
          Text("Estado: ${pedido['estado']}"),
          Text(
            "Total Global: \$${totalGlobal.toStringAsFixed(2)}",
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Observaciones:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(pedido['observaciones'] ?? "No hay observaciones"),
              const SizedBox(height: 10),
              const Text(
                "Productos:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              ...productosList,
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      mostrarModal(context, pedido['id'].toString());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Actualizar Estado',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}