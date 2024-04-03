import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  int age;
  int weight;
  int height;
  int gender;

  DataProvider({
    this.age = 20,
    this.weight = 80,
    this.height = 180,
    this.gender = 1,
  });

  void changeAge({required int newAge}) async {
    age = newAge;
    notifyListeners();
  }

  void changeWeight({required int newWeight}) async {
    weight = newWeight;
    notifyListeners();
  }

  void changeHeight({required int newHeight}) async {
    height = newHeight;
    notifyListeners();
  }

  void chagneGender({required int newGender}) async {
    gender = newGender;
    notifyListeners();
  }
}
