import 'package:flutter/material.dart';
import 'package:zap_controller_1_0/model/productos.dart';
import 'package:zap_controller_1_0/theme/paleta.dart';

class PantallaDetalle extends StatelessWidget {
  final Producto producto;

  const PantallaDetalle({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(producto.nombre)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'imagen-${producto.nombre}',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Image.asset(
                    producto.imagen,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              producto.categoria.toUpperCase(),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                color: Paleta.azulClaro,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              producto.nombre,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Paleta.azulOscuro,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _dato(Icons.sell_outlined, 'Precio', producto.precioTexto),
                const SizedBox(width: 10),
                _dato(
                  Icons.inventory_2_outlined,
                  'Existencias',
                  '${producto.existencias} pzs',
                ),
                const SizedBox(width: 10),
                _dato(Icons.place_outlined, 'Estante', producto.ubicacion),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Descripción',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Paleta.azulOscuro,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              producto.descripcion,
              style: const TextStyle(fontSize: 15, height: 1.5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: FilledButton.icon(
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${producto.nombre} agregado a la venta'),
                ),
              );
            },
            icon: const Icon(Icons.add_circle_outline),
            label: const Text('Agregar a la venta'),
          ),
        ),
      ),
    );
  }

  Widget _dato(IconData icono, String etiqueta, String valor) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Icon(icono, size: 24, color: Paleta.azul),
            const SizedBox(height: 6),
            Text(
              valor,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Paleta.azulOscuro,
              ),
            ),
            Text(
              etiqueta,
              style: const TextStyle(fontSize: 12, color: Paleta.gris),
            ),
          ],
        ),
      ),
    );
  }
}
