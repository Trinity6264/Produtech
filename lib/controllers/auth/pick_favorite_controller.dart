import 'dart:developer';

import 'package:flutter/widgets.dart';

class PickFavoriteController extends ChangeNotifier {
  static final List<Map> _lisOfPicks = [];
  List<Map> get lisOfPicks => _lisOfPicks;

  void onTap(Map value) {
    // log(message)
    if (!_lisOfPicks.contains(value)) {
      _lisOfPicks.add(value);
    } else {
      _lisOfPicks.removeWhere((element) => element['id'] == value['id']);
    }
    notifyListeners();
  }
}
