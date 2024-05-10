import 'package:fltprojeect/statemanagement/using_provider/model/count.dart';
import 'package:flutter/material.dart';

class CounterProvider1 extends ChangeNotifier {
  final Count _incCount = Count(0);

  ///similar to int count
  Count get counter => _incCount;

  void incrementCounter() {
    _incCount.value++;
    notifyListeners();
  }

  void decrementCounter() {
    _incCount.value--;
    notifyListeners();
  }
}
