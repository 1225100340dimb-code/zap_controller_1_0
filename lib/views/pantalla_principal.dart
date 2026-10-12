import 'package:flutter/material.dart';
import 'package:zap_controller_1_0/data/productos_data.dart';
import 'package:zap_controller_1_0/model/productos.dart';
import 'package:zap_controller_1_0/widgets/tarjeta_producto.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  final List<String> _categorias = const [
    'Todos',
    'Tenis',
    'Botas',
    'Formal',
    'Casual',
    'Sandalias',
  ];

  String _busqueda = '';
  String _categoriaActiva = 'Todos';

  @override
  Widget build(BuildContext context) {
    final List<Producto> visibles = productos.where((Producto p) {
      final bool coincideNombre =
          p.nombre.toLowerCase().contains(_busqueda.toLowerCase());
      final bool coincideCategoria =
          _categoriaActiva == 'Todos' || p.categoria == _categoriaActiva;
      return coincideNombre && coincideCategoria;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ZapControl'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Perfil: próximamente')),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Buscar producto',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (valor) {
                setState(() {
                  _busqueda = valor;
                });
              },
            ),
          ),
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                for (final String categoria in _categorias)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(categoria),
                      selected: _categoriaActiva == categoria,
                      onSelected: (_) {
                        setState(() {
                          _categoriaActiva = categoria;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: visibles.isEmpty
                ? const Center(child: Text('No se encontraron productos'))
                : GridView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: visibles.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.68,
                        ),
                    itemBuilder: (BuildContext context, int indice) {
                      return TarjetaProducto(producto: visibles[indice]);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}