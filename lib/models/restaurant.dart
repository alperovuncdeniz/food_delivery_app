import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: name,
          price: price,
        ),
      ],
    ),
  ];
}
