import 'package:flower_e_commerce/Model/category.dart';
import 'package:flutter/material.dart';

class Cartprov with ChangeNotifier {
  List<Category> items = [];
  List<Category> get Basket {
    return items;
  }

  int salary = 0;

  void add(Category item) {
    items.add(item);
    salary += item.salary;
    notifyListeners();
  }

  void delete(Category item) {
    items.remove(item);
    salary -= item.salary;
    notifyListeners();
  }

  int get count {
    return items.length;
  }

  int get Salary {
    return salary;
  }
}
