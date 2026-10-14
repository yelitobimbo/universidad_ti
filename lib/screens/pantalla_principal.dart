import 'package:flutter/material.dart';
import '../data/carrera.dart';
import '../widgets/tarjeta_carrera.dart';

class PantallaPrincipal extends StatelessWidget {
  PantallaPrincipal({super.key});

  final List<Carrera> carreras = [
    const Carrera(
      nombre: 'Tecnologías de la Información',
      descripcion: 'Desarrollo de software, redes y sistemas multiplataforma.',
      icono: Icons.computer,
      color: Colors.blue,
    ),
    const Carrera(
      nombre: 'Mecatrónica',
      descripcion: 'Automatización, robótica y sistemas de control industrial.',
      icono: Icons.precision_manufacturing,
      color: Colors.orange,
    ),
    const Carrera(
      nombre: 'Industrial',
      descripcion: 'Optimización de procesos de producción y calidad.',
      icono: Icons.factory,
      color: Colors.green,
    ),
    const Carrera(
      nombre: 'Administración',
      descripcion: 'Gestión empresarial, finanzas y dirección de proyectos.',
      icono: Icons.business_center,
      color: Colors.purple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Universidad TI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: carreras.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return TarjetaCarrera(carrera: carreras[index]);
          },
        ),
      ),
    );
  }
}