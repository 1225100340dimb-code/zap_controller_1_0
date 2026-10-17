import 'package:flutter/material.dart'; // Trae todos los widgets de Flutter (Container, Text, Column...)

// StatelessWidget = widget que solo muestra datos y nunca cambia por sí solo
class TarjetaEstadistica extends StatelessWidget {
  final String valor; // El número grande, por ejemplo '152'
  final String etiqueta; // El texto pequeño, por ejemplo 'Productos'
  final Color colorValor; // El color del número grande

  const TarjetaEstadistica({
    super.key, // Identificador interno de Flutter, siempre se incluye
    required this.valor, // required = obligatorio al crear la tarjeta
    required this.etiqueta,
    this.colorValor = const Color(
      0xFF122036,
    ), // Opcional: si no se pasa, usa azul oscuro
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Espacio de 14 px entre el borde de la caja y lo que tiene dentro
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFEEF2F7), // Fondo gris claro
        borderRadius: BorderRadius.circular(16), // Esquinas redondeadas
      ),
      child: Column(
        // Column apila los hijos de arriba hacia abajo
        mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea a la izquierda
        children: [
          Text(
            valor, // El número grande
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800, // Letra muy gruesa
              color: colorValor, // Sin const porque el color cambia por tarjeta
            ),
          ),
          const SizedBox(
            height: 2,
          ), // Espacio vacío de 2 px entre los dos textos
          Text(
            etiqueta, // El texto pequeño
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6B7A90), // Gris
            ),
          ),
        ],
      ),
    );
  }
}
