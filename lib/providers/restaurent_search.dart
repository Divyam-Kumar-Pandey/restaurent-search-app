import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'restaurent_data.dart';
import 'package:flutter_app_riverpod/models/restaurent_model.dart';

class RestaurantSearch extends StateNotifier<String> {
  RestaurantSearch() : super('');

  void setSearchQuery(String query) {
    state = query;
  }
}

final restaurantSearchProvider = StateNotifierProvider<RestaurantSearch, String>((ref) {
  return RestaurantSearch();
});

final filteredRestaurantProvider = Provider<List<Restaurant>>((ref) {
  final query = ref.watch(restaurantSearchProvider).toLowerCase();
  final restaurants = ref.watch(restaurantProvider);

  if (query.isEmpty) {
    return restaurants;
  } else {
    return restaurants
        .where((restaurant) => restaurant.name.toLowerCase().contains(query))
        .toList();
  }
});
