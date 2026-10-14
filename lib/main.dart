import 'package:flutter/material.dart';

import 'screens/pantalla_principal.dart';

void main() {
  runApp(const UniversidadTIApp());
}

class UniversidadTIApp extends StatelessWidget {
  const UniversidadTIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universidad TI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: PantallaPrincipal(),
    );
  }
}
