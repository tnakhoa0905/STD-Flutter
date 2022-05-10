import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/providers/retaurant_provider.dart';
import 'package:restaurant_app/screens/detail_retaurant.dart';
import 'package:restaurant_app/screens/home_screen.dart';

import 'models/restaurant.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => RestaurantProvider()),
        ],
        child: const MaterialApp(
            title: 'Restaurant App',
            debugShowCheckedModeBanner: false,
            home: HomeScreen())),
  );
}
