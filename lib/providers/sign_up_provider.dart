import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  String _dropdownValue = "Software Engineer";
  String _firstName = "";
  String _lastName = "";
  String _teamName = "";
  String _teamSize = "";
  String _industry = "";
  String get dropdownvalue => _dropdownValue;
  String get firstname => _firstName;
  String get lastname => _lastName;
  String get teamname => _teamName;
  String get teamsize => _teamSize;
  String get industry => _industry;

  void setDropDownValue(String value) {
    _dropdownValue = value;
    notifyListeners();
  }
    void setFirstName(String value) {
    _firstName = value;
    notifyListeners();
  }
    void setLastName(String value) {
    _lastName = value;
    notifyListeners();
  }
    void setTeamName(String value) {
    _teamName = value;
    notifyListeners();
  }
    void setTeamSize(String value) {
    _teamSize = value;
    notifyListeners();
  }
    void setIndustry(String value) {
    _industry = value;
    notifyListeners();
  }
}
