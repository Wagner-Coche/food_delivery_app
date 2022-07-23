import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/data/restaurant_data.dart';
import 'package:food_delivery_app/data/user_data.dart';
import 'package:food_delivery_app/models/order.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/restaurant_screen.dart';
import 'package:food_delivery_app/widgets/rating_star.dart';

class NearbyRestaurants extends StatefulWidget {
  const NearbyRestaurants({Key? key}) : super(key: key);

  @override
  State<NearbyRestaurants> createState() => _NearbyRestaurantsState();
}

class _NearbyRestaurantsState extends State<NearbyRestaurants> {

  _buildRestaurants() {
    List<Widget> listaRestaurants = [];
    for (var element in restaurants) {
      listaRestaurants.add(
        GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RestaurantScreen(restaurant: element))),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 1.0,
                color: Colors.grey.shade300
              )
            ),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    height: 100,
                    width: 100,
                    image: AssetImage(element.imageUrl), 
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          element.name,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        child: RatingStar(value: element.rating)
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          element.address,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      const Text("0.2 milles away")
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      );
    }

    return Column(children: listaRestaurants);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Nearby Restaurants",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
              ),
            ),
          ),
          SizedBox(child: _buildRestaurants())
        ],
      ),
    );
  }
}