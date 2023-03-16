import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  bool _switch = false;
  bool get getSwitch => _switch;
  int get getCounter => _counter;
  incrementCounter() {
    _counter += 1;
    notifyListeners();
  }

  saveCounter() async {
    //guardar en la celda 'counter' el valor del counter dentro de la Hive 'Contador'
    var box = await Hive.openBox<int>('Contador');
    await box.put('counter', _counter);
    notifyListeners();
  }

  loadCounter() async {
    //abrir box
    var box = await Hive.openBox<int>('Contador');
    //extraer contenido de la box
    _counter = box.get('counter') ?? 0;
    //actualizar counter y notifyListeners
    notifyListeners();
  }

  saveSwitch() async {
    var box2 = await Hive.openBox<bool>('Booleanos');
    await box2.put('bool', _switch);
    notifyListeners();
  }

  loadSwitch() async {
    var box2 = await Hive.openBox<bool>('Booleanos');
    _switch = box2.get('bool') ?? false;
    notifyListeners();
  }

  setSwitch(value) async {
    _switch = value;
    notifyListeners();
  }
}
