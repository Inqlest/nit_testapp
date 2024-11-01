import 'package:flutter/material.dart';

class SquareProvider extends ChangeNotifier {
  final List<int> numberHistory = [];
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void updateHistory(value) {
    numberHistory.add(value);
    notifyListeners();
  }
}
