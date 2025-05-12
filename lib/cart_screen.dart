import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Aquí podrías agregar la lógica para mostrar un menú en la pantalla del carrito
              print('Icono de menú en el carrito presionado');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.shopping_cart,
              size: 100.0, // Ajusta el tamaño del icono del carrito
            ),
            const SizedBox(height: 24.0),
            const Text(
              '3 balones de basket',
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Text(
              '\$102 x 3 = \$306',
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
            const SizedBox(height: 16.0),
            const Text(
              '1 balon de futball',
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Text(
              '\$206 x 1 = \$206',
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
            const SizedBox(height: 16.0),
            const Text(
              '2 balones de beisball',
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            Text(
              '\$123 x 2 = \$246',
              style: TextStyle(fontSize: 30.0, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
