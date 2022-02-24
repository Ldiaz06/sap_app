import 'package:sap_app/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static generateRestaurant() {
    return Restaurant(
      'Restaurante',
      '20-30 min',
      '2.4km',
      'Restaurantes',
      'assets/images/res_logo.png',
      'La comida es deliciosa',
      4.7,
      {
        'Recommend': Food.generateRecommendFoods(),
        'Popular': Food.generatePopularFoods(),
        'Noodles': [],
        'Pizza': [],
      },
    );
  }
}
