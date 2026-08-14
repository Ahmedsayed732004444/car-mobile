
import 'package:flutter/material.dart';

class HomeUserProvider extends ChangeNotifier {

  int indicatorAdsBannerIndex = 0;
  int expandedIndexFAQItem = -1;

  void changeBannerIndex(int i){
    indicatorAdsBannerIndex = i;
    notifyListeners();
  }

  void changeFAQItemIndex(int i){
    expandedIndexFAQItem = i;
    notifyListeners();
  }
}