import 'package:flutter/material.dart';
import 'package:food_delivery/data/category_data.dart';
import 'package:food_delivery/models/category_model.dart';
import 'package:food_delivery/widgets/food_card.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItem: _categories[index].numberOfItem,
          );
        },
      ),
    );
  }
}
