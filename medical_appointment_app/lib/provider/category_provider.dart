import 'package:medical_appointment_booking_app/model/category.dart';
import 'package:flutter/cupertino.dart';

class CategoryProvider with ChangeNotifier {
  final List<Category> _categoryList = [
    Category(categoryName: 'Adults', isSelected: true),
    Category(categoryName: 'Children', isSelected: false),
    Category(categoryName: 'Female', isSelected: false),
    Category(categoryName: 'Male', isSelected: false)
  ];

  List<Category> get categoryList => _categoryList;

  void selectCategory(final String categoryName, final bool isSelected) {
    _categoryList.forEach((element) {
      element.isSelected = element.categoryName == categoryName ? isSelected : !isSelected;
    });
    notifyListeners();
  }
}
