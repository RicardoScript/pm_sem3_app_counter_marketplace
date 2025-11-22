import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../contador_provider.dart';

class DetalleScreen extends StatelessWidget {
  // se declara constante para q no cree de nuevo el widget, mejorando rendimiento
  const DetalleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // consumimos el provider a travez del context.watch para acceder al contador
    final contador = context.watch<ContadorProvider>();

    // un Scaffold es un widget que nos permite crear la estructura de la pantalla
    return Scaffold(
      appBar: AppBar(title: const Text('Detalle del Contador')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // alinea a la izquierda
          children: [
            // IMAGEN ESTILO MARKETPLACE
            Center(
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[300],
                ),
                child: const Icon(Icons.chair, size: 120),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Vintage Leather Armchair",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              "\$250",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 30),

            // ======= CONTADOR =======
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Botón -
                IconButton(
                  onPressed: contador.decrementar,
                  icon: const Icon(Icons.remove),
                  iconSize: 30,
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Text(
                    contador.contador.toString(),
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Botón +
                IconButton(
                  onPressed: contador.incrementar,
                  icon: const Icon(Icons.add),
                  iconSize: 30,
                ),
              ],
            ),

            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: contador.reiniciar,
                child: const Text("Reset"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
