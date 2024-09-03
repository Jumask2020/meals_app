import 'package:meals_app/model/app_data.dart';
import 'package:meals_app/model/restaurant.dart';

import '../model/meal.dart';

class MealsVM {
  AppData appData = AppData();

  List<Meal> fetchAllMeals() {
    return appData.meals;
  }

  List<Restaurant> fetchAllRestaurant() {
    return appData.restauants;
  }

  
}
