
import 'package:flutter/material.dart';

import '../../models/city_model.dart';
import '../services/shared/shipping_service.dart';

class ShippingProvider extends ChangeNotifier {
  final ShippingService _service;

  CityModel? myCitySelectedModel;

  ShippingProvider(this._service);

  void selectedMyCity(CityModel? model) {
    myCitySelectedModel = model;
    notifyListeners();
  }



}