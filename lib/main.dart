import 'package:flutter/material.dart';
import 'package:pm_sem3_app_counter_marketplace/counter_page.dart';

void main() {
  runApp(SetStateCounterApp());
}

class SetStateCounterApp extends StatelessWidget {
  const SetStateCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        primaryColor: const Color(0xFFA86850),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFA86850)),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFA86850), width: 2),
            borderRadius: BorderRadius.circular(14),
          ),
          hintStyle: TextStyle(color: Colors.grey.shade500),
        ),
      ),
      home: const CounterPage(),
    );
  }
}
