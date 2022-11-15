import 'dart:developer';

import 'package:flutter/foundation.dart';

enum PaymentOptions { monthly, complete, annual }

class BasketController extends ChangeNotifier {
  PaymentOptions _selectedPaymentOption = PaymentOptions.monthly;
  PaymentOptions get selectedPaymentOption => _selectedPaymentOption;

  void setPaymentOption(PaymentOptions option) {
    _selectedPaymentOption = option;
    notifyListeners();
  }
}
