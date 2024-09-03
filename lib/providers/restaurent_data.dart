import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app_riverpod/models/restaurent_model.dart';

final restaurantProvider = Provider<List<Restaurant>>((ref) {
  return [
    Restaurant(id: 1, name: "The Smokehouse", cuisine: "Barbecue"),
    Restaurant(id: 2, name: "Pinocchio's Pizza", cuisine: "Italian"),
    Restaurant(id: 3, name: "Felipe's Taqueria", cuisine: "Mexican"),
    Restaurant(id: 4, name: "Tasty Burger", cuisine: "American"),
  ];
});
