import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final VoidCallback onIncrement; //método que se puede pasar por parámetro
  final VoidCallback onDecrement; //método que se puede pasar por parámetro

  const CounterButtons({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(onPressed: onDecrement, child: const Icon(Icons.remove)),
        const SizedBox(width: 16),
        ElevatedButton(onPressed: onIncrement, child: const Icon(Icons.add)),
      ],
    );
  }
}
