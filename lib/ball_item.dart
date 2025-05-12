import 'package:flutter/material.dart';

class BallItem extends StatelessWidget {
  final IconData icon;
  final String price;

  const BallItem({super.key, required this.icon, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(icon, size: 40.0),
        ),
        const SizedBox(height: 8.0),
        Text(price),
      ],
    );
  }
}
