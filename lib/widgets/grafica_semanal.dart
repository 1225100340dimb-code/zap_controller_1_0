import 'package:flutter/material.dart';

class GraficaSemanal extends StatelessWidget {
  final String titulo; // Título de la tarjeta
  final List<double> valores; // Altura de cada barra, entre 0 y 1 (0.5 = mitad)
  final int indiceDestacado; // Posición de la barra que va en azul fuerte

  const GraficaSemanal({
    super.key,
    required this.titulo,
    required this.valores,
    this.indiceDestacado = 4, // Por defecto la quinta barra (se cuenta desde 0)
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ocupa todo el ancho disponible
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // Fondo blanco
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE1E7EF)), // Borde delgado gris
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF122036),
            ),
          ),
          const SizedBox(height: 16), // Separación entre título y barras
          SizedBox(
            height: 70, // Esta altura equivale al 100 % de una barra
            child: Row(
              // Row coloca las barras una al lado de otra
              crossAxisAlignment: CrossAxisAlignment.end, // Alinea por abajo
              children: [
                // for dentro de la lista: crea una barra por cada valor
                for (int i = 0; i < valores.length; i++)
                  Expanded(
                    // Expanded: todas las barras ocupan el mismo ancho
                    child: Padding(
                      // 3 px a izquierda y derecha = separación entre barras
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        height: 70 * valores[i], // Altura según el valor (0 a 1)
                        decoration: BoxDecoration(
                          // Si es la barra destacada, azul fuerte; si no, azul claro
                          color: i == indiceDestacado
                              ? const Color(0xFF2D6FE0)
                              : const Color(0xFF7FB8F5),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}