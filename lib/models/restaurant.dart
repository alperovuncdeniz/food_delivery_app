import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  final List<Food> _menu = [
    //burgers

    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avocado cheese",
          price: 2.99,
        ),
      ],
    ),
    Food(
      name: "BBQ Bacon Cheeseburger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beef burger a savory delight.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Grilled Onions",
          price: 0.99,
        ),
        Addon(
          name: "Jalapeños",
          price: 1.49,
        ),
        Addon(
          name: "Extra BBQ Sauce",
          price: 1.99,
        ),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A tender beef patty topped with grilled pineapple slices, crispy bacon, melted Swiss cheese, fresh lettuce, and a drizzle of teriyaki sauce, all nestled between a toasted bun.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Pineapple",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.49,
        ),
        Addon(
          name: "Teriyaki Glaze",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Vega Burger",
      description:
          "A flavorful veggie patty with fresh lettuce, tomato, red onion, pickles, and vegan mayo.",
      imagePath: "lib/images/burgers/vega_burger.png",
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Vegan Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Avokado",
          price: 1.49,
        ),
        Addon(
          name: "Grilled Mushroom",
          price: 0.74,
        ),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description:
          "A crispy chicken fillet with fresh lettuce, tomato, pickles, and mayo.",
      imagePath: "lib/images/burgers/chicken_burger.png",
      price: 7.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(
          name: "Extra Chicken",
          price: 1.99,
        ),
        Addon(
          name: "Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.49,
        ),
      ],
    ),

    //salads

    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce tossed with Caesar dressing, croutons, and grated Parmesan cheese.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 2.49,
        ),
        Addon(
          name: "Avokado",
          price: 0.99,
        ),
        Addon(
          name: "Bacon Bits",
          price: 1.25,
        ),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A mix of crisp lettuce, cherry tomatoes, cucumber, red onion, Kalamata olives, and feta cheese, tossed in a light vinaigrette.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 2.49,
        ),
        Addon(
          name: "Avokado",
          price: 0.99,
        ),
        Addon(
          name: "Extra Feta",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Green Salad",
      description:
          "A fresh blend of mixed greens, cucumber, cherry tomatoes, and shredded carrots, served with your choice of dressing.",
      imagePath: "lib/images/salads/green_salad.png",
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 2.49,
        ),
        Addon(
          name: "Avokado",
          price: 0.99,
        ),
        Addon(
          name: "Hard-Boiled Egg",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "Quiona Salad",
      description:
          "A nutritious mix of quinoa, chopped cucumber, cherry tomatoes, red onion, and fresh parsley, tossed in a lemon vinaigrette.",
      imagePath: "lib/images/salads/quiona_salad.png",
      price: 7.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 2.49,
        ),
        Addon(
          name: "Avokado",
          price: 0.99,
        ),
        Addon(
          name: "Feta Cheese",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "SouthWest Salad",
      description:
          "A vibrant mix of romaine lettuce, black beans, corn, cherry tomatoes, avocado, and shredded cheese, topped with a zesty cilantro-lime dressing.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(
          name: "Grilled Chicken",
          price: 2.49,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
        Addon(
          name: "Sour Cream",
          price: 0.49,
        ),
      ],
    ),

    //sides

    Food(
      name: "Garlic Bread Side",
      description:
          "Crispy slices of toasted bread brushed with a savory garlic butter and sprinkled with fresh parsley.",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Garlic Butter",
          price: 0.49,
        ),
        Addon(
          name: "Melted Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Marinara Sauce",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "French Fries",
      description: "Crispy, golden fries seasoned with a touch of salt.",
      imagePath: "lib/images/sides/loadedfries_side.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Cheese Sauce",
          price: 0.99,
        ),
        Addon(
          name: "Bacon Bits",
          price: 1.25,
        ),
        Addon(
          name: "Ranch Dip",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "Mac & Cheese",
      description:
          "Creamy macaroni and cheese topped with a crunchy breadcrumb crust.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon Bits",
          price: 1.25,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy, golden-brown onion rings served with a tangy dipping sauce.",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Dipping Sauce",
          price: 0.50,
        ),
        Addon(
          name: "Cheese Sauce",
          price: 0.99,
        ),
        Addon(
          name: "Bacon Bits",
          price: 1.25,
        ),
      ],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Golden-fried mozzarella sticks served with marinara sauce.",
      imagePath: "lib/images/sides/mozzarella_sticks_side.png",
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(
          name: "Extra Marinara Sauce",
          price: 0.50,
        ),
        Addon(
          name: "Ranch Dip",
          price: 0.75,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
      ],
    ),

    //desserts

    Food(
      name: "Cheesecake",
      description:
          "A creamy and rich cheesecake with a buttery graham cracker crust, topped with a sweet strawberry glaze.",
      imagePath: "lib/images/desserts/cheesecake_dessert.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Marinara Sauce",
          price: 0.50,
        ),
        Addon(
          name: "Ranch Dip",
          price: 0.75,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "Chocolate Fondue",
      description:
          "Rich, melted chocolate served with a variety of dippable treats like fresh strawberries, banana slices, marshmallows, and pretzels.",
      imagePath: "lib/images/desserts/chocolate_fondue_dessert.png",
      price: 7.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Marinara Sauce",
          price: 0.50,
        ),
        Addon(
          name: "Ranch Dip",
          price: 0.75,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "Chocolate Fudge",
      description:
          "A dense and rich chocolate fudge topped with a sprinkle of sea salt.",
      imagePath: "lib/images/desserts/chocolate_fudge_dessert.png",
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Marinara Sauce",
          price: 0.50,
        ),
        Addon(
          name: "Ranch Dip",
          price: 0.75,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
      ],
    ),
    Food(
      name: "Cookies",
      description:
          "Freshly baked cookies with a soft, chewy center and crispy edges. Available in chocolate chip, oatmeal raisin, and peanut butter.",
      imagePath: "lib/images/desserts/cookies_dessert.png",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(
          name: "Extra Marinara Sauce",
          price: 0.50,
        ),
        Addon(
          name: "Ranch Dip",
          price: 0.75,
        ),
        Addon(
          name: "Jalapeños",
          price: 0.75,
        ),
      ],
    ),
  ];
}
