import 'package:flutter/material.dart';
import 'ball_item.dart';
import 'cart_screen.dart'; // Importa la pantalla del carrito

class BallMenuScreen extends StatelessWidget {
  const BallMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Navega a la pantalla del carrito al presionar el botón de menú
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Menú de ball`s disponibles',
              style: TextStyle(color: Colors.green, fontSize: 31.0),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Tenemos la mejor calidad para ti',
              style: TextStyle(fontSize: 25.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para la orden de pelotas
                print('Botón de Orden de balls presionado');
              },
              child: const Text('Orden de balls'),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                BallItem(icon: Icons.sports_basketball, price: '\$102'),
                BallItem(icon: Icons.sports_baseball, price: '\$206'),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                BallItem(icon: Icons.sports_soccer, price: '\$206'),
                BallItem(icon: Icons.sports_baseball, price: '\$123'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
