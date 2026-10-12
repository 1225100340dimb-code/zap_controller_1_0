class Producto {
  final String nombre;
  final String categoria;
  final String descripcionCorta;
  final String descripcion;
  final double precio;
  final int existencias;
  final String ubicacion;
  final String imagen;

  const Producto({
    required this.nombre,
    required this.categoria,
    required this.descripcionCorta,
    required this.descripcion,
    required this.precio,
    required this.existencias,
    required this.ubicacion,
    required this.imagen,
  });

  String get precioTexto => '\$${precio.toStringAsFixed(2)}';
}