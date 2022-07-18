import 'package:food_delivery_app/data/food_data.dart';
import 'package:food_delivery_app/models/restaurant.dart';

final _firstRestaurant = Restaurant(
  imageUrl: 'assets/images/restaurant0.jpg',
  name: 'Restaurant 0',
  address: '200 Main St, New York, NY',
  rating: 5,
  menu: [burrito(), steak(), pasta(), ramen(), pancakes(), burger(), pizza(), salmon()],
);
final _secondRestaurant = Restaurant(
  imageUrl: 'assets/images/restaurant1.jpg',
  name: 'Restaurant 1',
  address: '200 Main St, New York, NY',
  rating: 4,
  menu: [steak(), pasta(), ramen(), pancakes(), burger(), pizza()],
);
final _thirdRestaurant = Restaurant(
  imageUrl: 'assets/images/restaurant2.jpg',
  name: 'Restaurant 2',
  address: '200 Main St, New York, NY',
  rating: 4,
  menu: [steak(), pasta(), pancakes(), burger(), pizza(), salmon()],
);
final _fourthRestaurant = Restaurant(
  imageUrl: 'assets/images/restaurant3.jpg',
  name: 'Restaurant 3',
  address: '200 Main St, New York, NY',
  rating: 2,
  menu: [burger(), steak(), burger(), pizza(), salmon()],
);
final _fifthRestaurant = Restaurant(
  imageUrl: 'assets/images/restaurant4.jpg',
  name: 'Restaurant 4',
  address: '200 Main St, New York, NY',
  rating: 3,
  menu: [burrito(), ramen(), pancakes(), salmon()],
);

final List<Restaurant> restaurants = [
  _firstRestaurant,
  _secondRestaurant,
  _thirdRestaurant,
  _fourthRestaurant,
  _fifthRestaurant,
];

Restaurant firstRestautant() {
  return _firstRestaurant;
}

Restaurant secondRestautant() {
  return _secondRestaurant;
}

Restaurant thirdRestautant() {
  return _thirdRestaurant;
}

Restaurant fourthRestautant() {
  return _fourthRestaurant;
}

Restaurant fifthRestautant() {
  return _fifthRestaurant;
}