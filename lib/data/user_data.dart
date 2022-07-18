import 'package:food_delivery_app/data/food_data.dart';
import 'package:food_delivery_app/data/restaurant_data.dart';
import 'package:food_delivery_app/models/order.dart';
import 'package:food_delivery_app/models/user.dart';

final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 10, 2019',
      food: steak,
      restaurant: thirdRestautant,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: ramen,
      restaurant: firstRestautant,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: burrito,
      restaurant: secondRestautant,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: salmon,
      restaurant: fourthRestautant,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1, 2019',
      food: pancakes,
      restaurant: fifthRestautant,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: burger,
      restaurant: thirdRestautant,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: pasta,
      restaurant: thirdRestautant,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: salmon,
      restaurant: fourthRestautant,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: pancakes,
      restaurant: fifthRestautant,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: burrito,
      restaurant: secondRestautant,
      quantity: 2,
    ),
  ],
);
