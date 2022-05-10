import 'dart:async';

import 'package:restaurant_app/models/restaurant.dart';

class RestaurantBloC {
  late Restaurant _restaurant;

  StreamController<Restaurant> restaurantController =
      StreamController<Restaurant>();
  StreamController<List<Restaurant>> listRestaurantController =
      StreamController<List<Restaurant>>();
  List<Restaurant> getList() {
    listRestaurantController.sink.add(data);
    return data;
  }

  Restaurant? getRestaurant(int id) {
    for (int i = 0; i < data.length; i++) {
      if (data[i].restaurantID == id) {
        restaurantController.sink.add(data[i]);
        return data[i];
      }
    }
    return null;
  }

  Restaurant? increaseLike(int id) {
    for (int i = 0; i < data.length; i++) {
      if (data[i].restaurantID == id) {
        if (data[i].statusLike == false) {
          data[i].statusLike = true;
          data[i].like++;
        } else {
          data[i].like--;
          data[i].statusLike = false;
        }

        restaurantController.sink.add(data[i]);
        return data[i];
      }
    }
    return null;
  }
}
