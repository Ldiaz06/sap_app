import 'package:flutter/material.dart';
import 'package:sap_app/constants/colors.dart';
import 'package:sap_app/models/restaurant.dart';
import 'package:sap_app/widgets/custom_app_bar.dart';
import 'package:sap_app/screens/home/widget/food_list.dart';
import 'package:sap_app/screens/home/widget/restaurant_info.dart';

import 'widget/food_list_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
              (int index) {
                setState(() {
                  selected = index;
                });
              },
              pageController,
              restaurant,
            ),
          )
        ],
      ),
    );
  }
}
