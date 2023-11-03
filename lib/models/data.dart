import 'package:flutter/cupertino.dart';

class Data with ChangeNotifier {
  Map<String, String> _data = {
    'fullName': 'Andreeva Anna',
    'email': 'anna@anna.com',
    'phone': '+375726014690',
    'country': 'Belarus',
    'city': 'Minsk',
    'address': 'Andreeva 22',
    'postcode': '220069'
  };

  // String fullName = 'Andreeva Anna';
  // String email = 'anna@anna.com';
  // String phone = '+375726014690';
  // String country = 'Belarus';
  // String city = 'Minsk';
  // String address = 'Andreeva 22';
  // String postcode = '220069';

  Map<String, String> get getData => _data;

  void changeData(Map<String, String> newData) {
    _data = newData;

    notifyListeners();
  }
}
