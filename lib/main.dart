import 'package:flutter/material.dart';

void main() => runApp(const AppAmazon());

class AppAmazon extends StatelessWidget {
  const AppAmazon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Estefania',
      home: const Productos(),
      debugShowCheckedModeBanner: false,
    );
  }
} // fin clase AppAmazon

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 20, 20),

        // 🔹 Leading (icono caja)
        leading: const Icon(
          Icons.inventory_2_outlined,
          color: Colors.white,
        ),

        title: const Text(
          'Amazon Estefania',
          style: TextStyle(color: Colors.white),
        ),

        // 🔹 Actions (3 iconos blancos)
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

       body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildGradientItem(
            title: 'Configuración',
            subtitle: 'Ajusta tus preferencias',
            icon: Icons.settings,
            colors: [Color(0xFFFFE5EC), Color.fromARGB(255, 194, 122, 135)],
          ),
          _buildGradientItem(
            title: 'Perfil',
            subtitle: 'Mira tus estadísticas',
            icon: Icons.person,
            colors: [Color.fromARGB(255, 207, 168, 178), Color.fromARGB(255, 255, 170, 220)],
          ),
          _buildGradientItem(
            title: 'Mensajes',
            subtitle: '3 mensajes nuevos',
            icon: Icons.message,
            colors: [Color.fromARGB(255, 234, 181, 181), Color.fromARGB(255, 234, 228, 199)],
          ),
          _buildGradientItem(
            title: 'Pagos',
            subtitle: 'Revisa tus facturas',
            icon: Icons.payment,
            colors: [Color.fromARGB(255, 255, 205, 193), Color.fromARGB(255, 255, 201, 180)],
          ),
          _buildGradientItem(
            title: 'Seguridad',
            subtitle: 'Tu cuenta está protegida',
            icon: Icons.shield,
            colors: [Color.fromARGB(255, 244, 212, 212), Color.fromARGB(255, 249, 169, 206)],
          ),
        ],
      ),
    );
  }

  Widget _buildGradientItem({
    required String title,
    required String subtitle,
    required IconData icon,
    required List<Color> colors,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
} // fin clase AppAmzon
