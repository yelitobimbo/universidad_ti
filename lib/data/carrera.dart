import 'package:flutter/material.dart';

class Carrera {
  final String nombre;
  final String descripcion;
  final IconData icono;
  final Color color;

  const Carrera({
    required this.nombre,
    required this.descripcion,
    required this.icono,
    required this.color,
  });
}