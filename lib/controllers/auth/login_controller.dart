import 'package:flutter/widgets.dart';

class LoginViewController extends ChangeNotifier {
  bool _isSeen = true;
  bool get isSeen => _isSeen;

  void setPassword() {
    _isSeen = !_isSeen;
    notifyListeners();
  }
}
