import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/widgets/gridview_restaurant_screen.dart';
import 'package:food_delivery_app/widgets/rating_star.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key, required this.restaurant}) : super(key: key);

  final Restaurant restaurant;
  
  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage(widget.restaurant.imageUrl), 
                height: 160, 
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context), 
                      icon: const Icon(
                        Icons.arrow_back_ios, 
                        color: Colors.white,
                        size: 25.0, 
                      )
                    ),
                    IconButton(
                      onPressed: () => print("object"), 
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.deepOrangeAccent,
                        size: 25.0,
                      )
                    )
                  ],
                ),
              )
            ]
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.restaurant.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const Text(
                          "0.2 milles away",
                          style: TextStyle(
                            fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ),
                  RatingStar(value: widget.restaurant.rating),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                    child: Text(widget.restaurant.address),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          height: 30.0,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              onPrimary: Colors.black12,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              )
                            ),
                            child: const Text(
                              "Reviews", 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13
                              )
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrangeAccent,
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              onPrimary: Colors.black12,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              )
                            ),
                            child: const Text(
                              "Contact", 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Center(
            child: Text(
              "Menu",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(widget.restaurant.menu.length, (index) {
                Food food = widget.restaurant.menu[index];
                return GridViewRestaurantScreen(food: food);
              })
            ),
          ),
        ],
      )
    );
  }
}