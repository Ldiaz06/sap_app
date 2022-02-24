class Food {
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(this.imgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. en Ventas',
          'Sopa de soba',
          '50min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Ramen Japones, rico',
          hightLight: true),
      Food(
          'assets/images/dish2.png',
          'Sin Grasa',
          'Sai ua Samun Phrai',
          '50min',
          4.8,
          '325 kcal',
          18,
          0,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Ramen Japones, rico'),
      Food(
          'assets/images/dish3.png',
          'Recomendado',
          'Ratatouille',
          '50min',
          4.8,
          '325 kcal',
          17,
          0,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Ramen Japones, rico'),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'assets/images/dish1.png',
          'No1. en Ventas',
          'Sopa de soba',
          '50min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Ramen Japones, rico'),
      Food(
          'assets/images/dish2.png',
          'Sin Grasa',
          'Sai ua Samun Phrai',
          '50min',
          4.8,
          '325 kcal',
          18,
          0,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Ramen Japones, rico'),
      Food(
          'assets/images/dish3.png',
          'Recomendado',
          'Ratatouille',
          '50min',
          4.8,
          '325 kcal',
          17,
          0,
          [
            {
              'Noodle': 'assets/images/ingre1.png',
            },
            {
              'Shrimp': 'assets/images/ingre2.png',
            },
            {
              'Egg': 'assets/images/ingre3.png',
            },
            {
              'Scallion': 'assets/images/ingre4.png',
            }
          ],
          'Ramen Japones, rico'),
    ];
  }
}
