import 'package:flutter/material.dart';
import 'package:pm_sem3_app_counter_marketplace/provider/pages/home_screen.dart';
import 'package:provider/provider.dart';
import 'provider/contador_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ContadorProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador Marketplace',
      home: HomeScreen(),
    );
  }
}
