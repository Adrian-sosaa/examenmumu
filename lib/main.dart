import 'package:flutter/material.dart';
import 'ball_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menú de Pelotas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BallMenuScreen(),
    );
  }
}
