
import 'dart:async';

import 'package:flutter/cupertino.dart';

class ProviderClass extends ChangeNotifier {
  var count = 0;
  var secondCounter = 0;

  void increment()  {
     count++;
     notifyListeners();
  }

  void timerCounter() {
    secondCounter++;
    notifyListeners();
  }


}