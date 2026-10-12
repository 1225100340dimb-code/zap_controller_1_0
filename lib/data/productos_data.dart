import 'package:zap_controller_1_0/model/productos.dart';

const List<Producto> productos = [
  Producto(
    nombre: 'Tenis Adidas Deportivos',
    categoria: 'Tenis Deportivo',
    descripcionCorta: 'Tenis urbano ligero de uso diario, suela acojinada.',
    descripcion:
        'Tenis urbano de corte bajo con suela acojinada y plantilla '
        'removible. Su material transpirable lo hace ideal para uso '
        'diario y jornadas largas. Es uno de los productos de mayor '
        'rotación en la tienda.',
    precio: 899,
    existencias: 24,
    ubicacion: 'A-2',
    imagen: 'assets/images/Tenis_adidas_negros.jpg',
  ),
  Producto(
    nombre: 'Tenis Adidas para correr ',
    categoria: 'Tenis',
    descripcionCorta: 'Tenis de running con amortiguación y malla ventilada.',
    descripcion:
        'Tenis deportivo para correr con amortiguación reforzada en el '
        'talón y malla ventilada. Suela de alto agarre para pavimento y '
        'pista. Recomendado para clientes que buscan rendimiento.',
    precio: 1249,
    existencias: 31,
    ubicacion: 'A-3',
    imagen: 'assets/images/tenis_running.jpg',
  ),
  Producto(
    nombre: 'Bota Trail Work',
    categoria: 'Botas',
    descripcionCorta: 'Bota de piel resistente con suela antiderrapante.',
    descripcion:
        'Bota de trabajo en piel resistente con suela antiderrapante y '
        'ojillos reforzados. Pensada para uso rudo en obra, campo o '
        'taller. Mantiene el pie cómodo durante todo el turno.',
    precio: 1399,
    existencias: 24,
    ubicacion: 'B-1',
    imagen: 'assets/images/bota_trabajo.jpg',
  ),
  Producto(
    nombre: 'Oxford Elegance',
    categoria: 'Formal',
    descripcionCorta: 'Zapato oxford de vestir en piel color café.',
    descripcion:
        'Zapato de vestir tipo oxford en piel con costuras decorativas '
        'y suela delgada. Ideal para oficina, eventos y ocasiones '
        'formales.',
    precio: 1149,
    existencias: 10,
    ubicacion: 'C-1',
    imagen: 'assets/images/oxford.jpg',
  ),
  Producto(
    nombre: 'Mocasín Casual Co.',
    categoria: 'Casual',
    descripcionCorta: 'Mocasín de piel color miel, cómodo y versátil.',
    descripcion:
        'Mocasín de piel color miel con antifaz decorativo. Cómodo y '
        'versátil: funciona tanto para el trabajo como para salir los '
        'fines de semana.',
    precio: 749,
    existencias: 24,
    ubicacion: 'D-1',
    imagen: 'assets/images/mocasin.jpg',
  ),
  Producto(
    nombre: 'Sandalia Sol',
    categoria: 'Sandalias',
    descripcionCorta: 'Sandalia ligera con tiras ajustables y plantilla suave.',
    descripcion:
        'Sandalia ligera con tiras ajustables y plantilla suave. '
        'Perfecta para clima cálido y para la temporada alta de ventas '
        'en primavera y verano.',
    precio: 449,
    existencias: 35,
    ubicacion: 'D-3',
    imagen: 'assets/images/sandalia.jpg',
  ),
];
