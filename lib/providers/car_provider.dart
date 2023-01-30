import 'package:car_flutter/model/class_car_model.dart';
import 'package:car_flutter/model/list_car_model.dart';
import 'package:flutter/cupertino.dart';

class CarProvider extends ChangeNotifier {
  List<CarModel> cars = data;

  List<CarModel> wastebasket = [];

  List<CarModel> removewastebasket = [];

  void addtoWastebasket({required CarModel model}) {
    wastebasket.add(model);
    notifyListeners();
  }

  void removetoWastebasket({required CarModel model}) {
    removewastebasket.remove(model);
    notifyListeners();
  }
}
