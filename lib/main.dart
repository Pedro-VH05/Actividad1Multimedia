import 'package:actividad1/Screens/menu_lateral.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navegable',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navegable'),
        backgroundColor: const Color(0xFF76e9ff),
      ),
      drawer: const MenuLateral(),
      backgroundColor: const Color(0xFFdaffff),
      body: const Center(
        child: Text(
          'Selecciona una opción del menú.',
        ),
      ),
    );
  }
}