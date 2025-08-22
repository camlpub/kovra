import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../inicio.dart';

class RegistroVentaScreen extends StatefulWidget {
  final dynamic data;
  @override
  _RegistroVentaScreenState createState() => _RegistroVentaScreenState();
  RegistroVentaScreen(this.data, {Key? key}) : super(key: key);

}

class _RegistroVentaScreenState extends State<RegistroVentaScreen> {
  final _formKey = GlobalKey<FormState>();


  // Constructor para recibir los datos
  

  // Controladores para los campos
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController celularController = TextEditingController();
  final TextEditingController direccionController = TextEditingController();
  final TextEditingController observacionesController = TextEditingController();
  final TextEditingController fechaEntregaController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();
  final TextEditingController precioController = TextEditingController();


  // Lista de opciones para el tipo de venta
  final List<String> tipoVentaOptions = [
    'Provincia',
    'Interrapidisimo',
    'Contra entrega sur',
    'Contra entrega norte',
  ];

  String? tipoVentaSeleccionado;
  DateTime? selectedDate;

  List<dynamic> productos = [];
  List<Map<String, dynamic>> productosSeleccionados = [];
  String? productoSeleccionado;
  bool isLoading = true;

  // Método para obtener productos de la API
  Future<void> fetchProductos() async {
    final url = Uri.parse('https://onlinecommerce.com.co/kovra/?controller=productos');
    final response = await http.get(url);

    if (response.statusCode == 201) {
      setState(() {
        productos = json.decode(response.body);
        isLoading = false;
      });
    } else {
      throw Exception('Error al cargar productos');
    }
  }

  // Función para mostrar el selector de fecha
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        fechaEntregaController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchProductos();
  }

  // Función para agregar un producto seleccionado a la lista de productos de venta
void agregarProductoSeleccionado() {
  if (productoSeleccionado != null &&
      cantidadController.text.isNotEmpty &&
      int.tryParse(cantidadController.text) != null) {
    final producto = productos.firstWhere(
      (producto) => producto['id'].toString() == productoSeleccionado,
      orElse: () => null,
    );

    if (producto != null) {
      final int cantidad = int.parse(cantidadController.text);

      // Usar el precio manual si está presente, de lo contrario, usar el de la API
      final double precio = precioController.text.isNotEmpty &&
              double.tryParse(precioController.text) != null
          ? double.parse(precioController.text)
          : double.parse(producto['precio'].toString());

      setState(() {
        productosSeleccionados.add({
          'id': producto['id'],
          'nombre': producto['nombre'],
          'descripcion': producto['descripcion'],
          'precio': precio,
          'cantidad': cantidad,
          'total': cantidad * precio, // Calcular total
        });
        productoSeleccionado = null;
        cantidadController.clear();
        precioController.clear(); // Limpiar el campo de precio
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Producto no encontrado')),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Complete todos los campos correctamente')),
    );
  }
}

  double calcularTotalGlobal() {
    return productosSeleccionados.fold(0.0, (sum, producto) {
      return sum + producto['total'];
    });
  }

  // Función para eliminar un producto de la lista de productos de venta
  void eliminarProductoSeleccionado(int index) {
    setState(() {
      productosSeleccionados.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Venta'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Campos de cliente y tipo de venta
              TextFormField(
                controller: nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre Cliente',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese el nombre del cliente';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: celularController,
                decoration: InputDecoration(
                  labelText: 'Celular',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese el número de celular';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: direccionController,
                decoration: InputDecoration(
                  labelText: 'Dirección',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_on),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese la dirección';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Selector de productos
              DropdownButtonFormField<String>(
                value: productoSeleccionado,
                items: productos.map<DropdownMenuItem<String>>((producto) {
                  return DropdownMenuItem<String>(
                    value: producto['id'].toString(),
                    child: Text(
                      '${producto['nombre']} - ${producto['descripcion']} - \$${double.parse(producto['precio']).toStringAsFixed(2)}',
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    productoSeleccionado = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Seleccionar Producto',
                  border: OutlineInputBorder(),
                ),

              ),

              SizedBox(height: 8),
              
              TextFormField(
                controller: cantidadController,
                decoration: InputDecoration(
                  labelText: 'Cantidad',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.add_shopping_cart),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 8),

              TextFormField(
                controller: precioController,
                decoration: InputDecoration(
                  labelText: 'Precio Manual',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.attach_money),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingrese el precio';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Ingrese un número válido';
                  }
                  return null;
                },
              ),     

              SizedBox(height: 8),

              // Botón para agregar producto seleccionado a la lista
              ElevatedButton(
                onPressed: agregarProductoSeleccionado,
                child: Text('Añadir Producto'),
              ),
              SizedBox(height: 16),

              // Lista de productos seleccionados
              Text(
                'Productos Seleccionados:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: productosSeleccionados.length,
                itemBuilder: (context, index) {
                  final producto = productosSeleccionados[index];
                  return ListTile(
                      title: Text(
                          '${producto['nombre']} - ${producto['descripcion']} - \$${producto['precio'].toStringAsFixed(2)} x${producto['cantidad']} - total = ${producto['total']}'),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => eliminarProductoSeleccionado(index),
                      ),

                  );
                },
              ),

              SizedBox(height: 16),

              Text(
                'Total Global: \$${calcularTotalGlobal().toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),


              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: tipoVentaSeleccionado,
                items: tipoVentaOptions.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    tipoVentaSeleccionado = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Tipo de Venta',
                  border: OutlineInputBorder(),
                ),
                validator: (value) =>
                    value == null ? 'Seleccione un tipo de venta' : null,
              ),
              SizedBox(height: 16),

              // Campos de observaciones y fecha de entrega
              TextFormField(
                controller: observacionesController,
                decoration: InputDecoration(
                  labelText: 'Observaciones',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.comment),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: fechaEntregaController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: 'Fecha de Entrega',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.date_range),
                    onPressed: () => _selectDate(context),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Seleccione la fecha de entrega';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32),

              // Botón de registrar venta
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    
                    if (_formKey.currentState!.validate()) {
                      // Crear el mapa de parámetros con todos los campos del formulario
                      final Map<String, dynamic> datos = {
                        "parameters": {
                          "nombre": nombreController.text,
                          "celular": celularController.text,
                          "direccion": direccionController.text,
                          "observaciones": observacionesController.text,
                          "fechaEntrega": fechaEntregaController.text,
                          "tipoVenta": tipoVentaSeleccionado,
                          "producto": productosSeleccionados, // o lista de productos si agregas múltiples
                          "id_usuario": widget.data['id_crm']
                        }
                      };

                      // Enviar la solicitud POST
                      http.post(
                        Uri.parse('https://onlinecommerce.com.co/kovra/?controller=venta&action=crear'),
                        headers: {"Content-Type": "application/json"},
                        body: jsonEncode(datos),
                      ).then((response) {
                        if (response.statusCode == 201) {
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Registro de venta exitoso')),
                          );
                          Navigator.pop(context); // Regresar a la pantalla anterior
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Error al registrar la venta')),
                          );
                        }
                      }).catchError((error) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Error de conexión')),
                        );
                      });
                    }
                  },                  
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    backgroundColor: Colors.teal,
                  ),
                  child: Text('Registrar Venta', style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
