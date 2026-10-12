import 'package:flutter/material.dart';
import 'package:zap_controller_1_0/theme/paleta.dart';
import 'package:zap_controller_1_0/views/pantalla_bienvenida.dart';

void main() {
  runApp(const ZapControlApp());
}

class ZapControlApp extends StatelessWidget {
  const ZapControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZapControl',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Paleta.azul,
          primary: Paleta.azul,
        ),
        scaffoldBackgroundColor: Paleta.fondo,
        appBarTheme: const AppBarTheme(
          backgroundColor: Paleta.azulOscuro,
          foregroundColor: Colors.white,
        ),
      ),
      home: const PantallaBienvenida(),
    );
  }
}
