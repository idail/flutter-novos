import 'package:flutter/material.dart';

class Nova extends StatelessWidget {
  const Nova({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      body: const Center(
        child: Text(
          'Este é um aplicativo Flutter simples.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}