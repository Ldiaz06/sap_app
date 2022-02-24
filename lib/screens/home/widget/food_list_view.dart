import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sap_app/models/restaurant.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;
  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          category.map((e) => ListView.separated(
              itemBuilder: (context, index) =>
                  FoodItem(restaurant.menu[category[selected]]![index]),
              separatorBuilder: separatorBuilder,
              itemCount: itemCount))
        ],
      ),
    );
  }
}
