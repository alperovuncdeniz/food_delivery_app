import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: capitalize(category.toString().split('.').last),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
    );
  }
}
