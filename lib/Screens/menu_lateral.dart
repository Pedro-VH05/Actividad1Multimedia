import 'package:actividad1/Screens/juego_imagenes';
import 'package:flutter/material.dart';
import 'package:actividad1/Screens/nombre_pantalla.dart';
import 'package:actividad1/Screens/fotos_pantalla.dart';
import 'package:actividad1/Screens/fotos_columna.dart';
import 'package:actividad1/Screens/iconos_pantalla.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFdaffff),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF76e9ff),
            ),
            child: Text(
              'Menú de Navegación',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                height: 10,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Nombre y Apellidos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NombrePantalla()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text('Fotos en Fila'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FotosPantalla()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Fotos en Columna'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FotosColumna()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Iconos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IconosPantalla()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.gamepad_outlined),
            title: const Text('Juego Imágenes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JuegoImagenes()),
              );
            },
          ),
        ],
      ),
    );
  }
}
