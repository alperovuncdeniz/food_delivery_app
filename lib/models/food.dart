class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.category,
      this.availableAddons = const []});
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;
  bool isSelected;

  Addon({
    required this.name,
    required this.price,
    this.isSelected = true,
  });
}
