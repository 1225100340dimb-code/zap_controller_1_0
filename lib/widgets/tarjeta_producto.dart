import 'package:flutter/material.dart';
import 'package:zap_controller_1_0/model/productos.dart';
import 'package:zap_controller_1_0/theme/paleta.dart';
import 'package:zap_controller_1_0/views/pantalla_detalle.dart';

class TarjetaProducto extends StatelessWidget {
  final Producto producto;

  const TarjetaProducto({super.key, required this.producto});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PantallaDetalle(producto: producto),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Hero(
                tag: 'imagen-${producto.nombre}',
                child: Image.asset(
                  producto.imagen,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      producto.nombre,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Paleta.azulOscuro,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      producto.descripcionCorta,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12, color: Paleta.gris),
                    ),
                    const Spacer(),
                    Text(
                      producto.precioTexto,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Paleta.azul,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}