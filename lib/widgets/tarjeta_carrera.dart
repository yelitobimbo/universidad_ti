import 'package:flutter/material.dart';

import '../data/carrera.dart';
import '../screens/pantalla_contenido.dart';

/// Tarjeta cuadrada redondeada con el icono circular y el nombre de la carrera.
class TarjetaCarrera extends StatelessWidget {
  final Carrera carrera;

  const TarjetaCarrera({super.key, required this.carrera});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PantallaContenido(carrera: carrera),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: carrera.color,
                child: Icon(carrera.icono, color: Colors.white, size: 32),
              ),
              const SizedBox(height: 12),
              Text(
                carrera.nombre,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
