import 'package:flutter/material.dart';

import '../model/user_model.dart';

class HomepageViewModel extends ChangeNotifier {
  UserModel _userData = UserModel();
  UserModel get userData => _userData;

  void addUser(UserModel user) {
    _userData = user;
    notifyListeners();
  }
}
