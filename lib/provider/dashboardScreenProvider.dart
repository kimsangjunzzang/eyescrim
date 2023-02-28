import 'package:flutter/material.dart';

class DashboardScreenProvider extends ChangeNotifier{
  int tabIndex = 0;

  int getNum() => tabIndex;
  void changeTabIndex(int index) {
    tabIndex = index;
    notifyListeners();
    print(tabIndex);
  }
}

