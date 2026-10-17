import 'package:flutter/material.dart';
import 'package:zap_controller_1_0/views/pantalla_de_inicio.dart'; // El dashboard

// StatefulWidget porque la pantalla necesita recordar qué pestaña está activa
class PantallaPrincipalZap extends StatefulWidget {
  const PantallaPrincipalZap({super.key});

  @override
  State<PantallaPrincipalZap> createState() => _PantallaPrincipalZapState();
}

class _PantallaPrincipalZapState extends State<PantallaPrincipalZap> {
  int _indiceActual = 0; // Pestaña activa: 0 Inicio, 1 Productos, 2 Ventas...

  // Una página por cada botón de la barra, en el MISMO orden que los botones
  final List<Widget> _paguinas = const [
    PantallaInicio(), // 0 -> el dashboard
    Center(child: Text('Productos')), // 1 -> relleno por ahora
    Center(child: Text('Ventas')), // 2
    Center(child: Text('Reportes')), // 3
    Center(child: Text('Mas')), // 4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ----- Barra de arriba -----
      appBar: AppBar(
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(80), // Logo redondeado
              child: Image.asset(
                'assets/images/logo.png',
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 10),
            const Text('ZapControl'),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Colors.indigo,
              size: 32.0,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Perfil proximamente')),
              );
            },
          ),
        ],
      ),

      // ----- Contenido: muestra la página de la pestaña activa -----
      body: _paguinas[_indiceActual],

      // ----- Barra de abajo -----
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Necesario con 4 o más botones
        currentIndex: _indiceActual, // Cuál botón se ve seleccionado
        selectedItemColor: const Color(0xFF2D6FE0), // Azul del botón activo
        unselectedItemColor: Colors.grey, // Gris de los demás
        onTap: (indice) {
          // Se ejecuta al tocar un botón; "indice" es su posición (0 a 4)
          setState(() {
            _indiceActual = indice; // Guarda la nueva pestaña
          }); // setState avisa a Flutter que vuelva a dibujar la pantalla
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), // Ícono sin seleccionar (contorno)
            activeIcon: Icon(Icons.home), // Ícono seleccionado (relleno)
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined),
            activeIcon: Icon(Icons.inventory_2),
            label: 'Productos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Ventas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            activeIcon: Icon(Icons.bar_chart),
            label: 'Reportes',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Más'),
        ],
      ),
    );
  }
}
