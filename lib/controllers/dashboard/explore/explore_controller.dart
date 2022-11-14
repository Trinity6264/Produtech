import 'package:flutter/foundation.dart';

enum RankCat { thisMonth, allTime }

class ExploreViewController extends ChangeNotifier {
//
  RankCat _selectedCat = RankCat.thisMonth;
  RankCat get selectedCat => _selectedCat;

  void toThisMonth() {
    _selectedCat = RankCat.thisMonth;
    notifyListeners();
  }

  void toAllTime() {
    _selectedCat = RankCat.allTime;
    notifyListeners();
  }
}
