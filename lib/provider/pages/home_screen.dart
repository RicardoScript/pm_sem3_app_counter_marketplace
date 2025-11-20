import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../contador_provider.dart';
import 'detalle_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contador = context.watch<ContadorProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Contador Marketplace')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor actual:', style: TextStyle(fontSize: 20)),
            Text(
              contador.contador.toString(),
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: contador.incrementar,
                  child: Text('+'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: contador.decrementar,
                  child: Text('-'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: contador.reiniciar,
                  child: Text('Reset'),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetalleScreen(valor: contador.contador),
                  ),
                );
              },
              child: Text('Ver Detalle'),
            ),
          ],
        ),
      ),
    );
  }
}
