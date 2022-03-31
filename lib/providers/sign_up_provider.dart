import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  String _dropdownValue = "Software Engineer";
  String get dropdownvalue => _dropdownValue;

  void setDropDownValue(String value) {
    _dropdownValue = value;
    notifyListeners();
  }
}
