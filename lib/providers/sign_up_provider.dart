import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  String _roleInCompany =  "Software Engineer";
  String _firstName = "";
  String _lastName = "";
  String _teamName = "";
  String _teamSize = "";
  String _industry = "Computer Industry";
  String _houseNumber = "";
  String _streetAddress = "";
  String _city = "";
  String _zipcode = "";
  String get roleincompany => _roleInCompany;
  String get firstname => _firstName;
  String get lastname => _lastName;
  String get teamname => _teamName;
  String get teamsize => _teamSize;
  String get industry => _industry;
  String get housenumber => _houseNumber;
  String get streetaddress => _streetAddress;
  String get city => _city;
  String get zipcode => _zipcode;

  void setRoleInCompany(String value) {
    _roleInCompany = value;
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

  void setHouseNumber(String value) {
    _houseNumber = value;
    notifyListeners();
  }

  void setStreetAddress(String value) {
    _streetAddress = value;
    notifyListeners();
  }

  void setCity(String value) {
    _city = value;
    notifyListeners();
  }

  void setZipcode(String value) {
    _zipcode = value;
    notifyListeners();
  }
}
