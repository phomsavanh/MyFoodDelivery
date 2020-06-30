import 'dart:convert';
import 'package:food_delivery/models/food_models.dart';
import 'package:http/http.dart' as http;

class FoodModel {
  List<Food> appFood;
  Food gen;
  Future<List<Food>> fetchFoods() async {
    final List<Food> fetchedFoodItems = [];
    http.Response query = await http
        .get("http://192.168.64.2/flutter_food_app/api/foods/getFood.php");
    var decode = json.decode(query.body);
    for (var food in decode)  {
      // gen = Food(
      //   id: food['id'],
      //   category: food['category_id'],
      //   discount: double.parse(food['discount']),
      //   imagePath: food['image_path'],
      //   name: food["name"],
      //   price: double.parse(food['price']),
      //   rating: double.parse(foo),
      // );
      // fetchedFoodItems.add(gen);
      // appFood = fetchedFoodItems;
      // print(fetchedFoodItems);
      print(food['image_path'].runtimeType);

    }

    return fetchedFoodItems;
  }
}
