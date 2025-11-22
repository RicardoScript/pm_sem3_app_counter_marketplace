import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContadorProvider extends ChangeNotifier {
  int _contador = 1; // AHORA EMPIEZA EN 1

  int get contador => _contador;

  // creamos un constructor para cargar el estado del contador
  ContadorProvider() {
    _cargarValor();
  }

  // usamos SharedPreferences para cargar el estado del contador
  // notifyListener sirve para notificar a los widgets que el estado ha cambiado
  Future<void> _cargarValor() async {
    final prefs = await SharedPreferences.getInstance();
    _contador = prefs.getInt('contador') ?? 1; // VALOR POR DEFECTO 1
    notifyListeners();
  }

  // usamos SharedPreferences para guardar el estado del contador al cerrar la app
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
    if (_contador > 1) {
      // NO DEJA BAJAR DE 1
      _contador--;
      _guardarValor();
      notifyListeners();
    }
  }

  void reiniciar() {
    _contador = 1; // RESET EN 1
    _guardarValor();
    notifyListeners();
  }
}
