import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  final int valor;

  const DetalleScreen({super.key, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del Contador')),
      body: Center(
        child: Text(
          'Valor recibido: $valor',
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
