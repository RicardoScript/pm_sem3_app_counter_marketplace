import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContadorProvider extends ChangeNotifier {
  int _contador = 0;

  int get contador => _contador;

  ContadorProvider() {
    _cargarValor();
  }

  Future<void> _cargarValor() async {
    final prefs = await SharedPreferences.getInstance();
    _contador = prefs.getInt('contador') ?? 0;
    notifyListeners();
  }

  Future<void> _guardarValor() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt('contador', _contador);
  }

  void incrementar() {
    _contador++;
    _guardarValor();
    notifyListeners();
  }

  void decrementar() {
    _contador--;
    _guardarValor();
    notifyListeners();
  }

  void reiniciar() {
    _contador = 0;
    _guardarValor();
    notifyListeners();
  }
}
