import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:food_delivery/data/food_data.dart';
import 'package:food_delivery/models/food_models.dart';

import 'bought_foods.dart';

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
   List<Food> _foods = foods;

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
    return Container(

      width: 300,
      height: 300,
      child: Carousel(
        boxFit: BoxFit.cover,
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: Color(0xFFFF335C),
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.topCenter,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        images: _foods.map(_buildFoodItems).toList(),
      ),
    );
  }
}
