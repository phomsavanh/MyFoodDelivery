import 'package:flutter/material.dart';
import 'package:food_delivery/data/food_data.dart';
import 'package:food_delivery/models/food_models.dart';
import 'package:food_delivery/scoped_model/food_model.dart';

import 'package:food_delivery/widgets/bought_foods.dart';
import 'package:food_delivery/widgets/carousel.dart';
import 'package:food_delivery/widgets/food_category.dart';
import 'package:food_delivery/widgets/home_top_info.dart';
import 'package:food_delivery/widgets/search_field.dart';
import 'package:food_delivery/widgets/title_foods.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    FoodModel foodModel = FoodModel();
    foodModel.fetchFoods();
    print("init ${foodModel.appFood}");
    print(foods.runtimeType);
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      child: BoughtFoods(
        id: food.id,
        category: food.category,
        discount: food.discount,
        imagePath: food.imagePath,
        name: food.name,
        price: food.price,
        rating: food.rating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        children: <Widget>[
          HomeTopInfo(),
          MyCarousel(),
          FoodCategory(),
          SearchField(),
          MyTitle(),
          Column(
            children: foods.map(_buildFoodItems).toList(),
          )
        ],
      ),
    );
  }
}
