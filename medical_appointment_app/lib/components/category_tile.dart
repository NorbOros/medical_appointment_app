import 'package:medical_appointment_booking_app/model/category.dart';
import 'package:medical_appointment_booking_app/provider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryTile extends StatelessWidget {
  final Category _category;

  const CategoryTile({required Category category}) : _category = category;

  @override
  Widget build(BuildContext context) {
    final CategoryProvider _categoryProvider = Provider.of<CategoryProvider>(context, listen: false);

    return GestureDetector(
      onTap: () => _categoryProvider.selectCategory(_category.categoryName, true),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 30,
        decoration: BoxDecoration(color: _category.isSelected ? Color(0xffFFD0AA) : Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Text(
          _category.categoryName,
          style: TextStyle(color: _category.isSelected ? Color(0xffFC9535) : Color(0xffA1A1A1)),
        ),
      ),
    );
  }
}
