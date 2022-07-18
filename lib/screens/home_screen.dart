import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
import 'package:food_delivery_app/data/restaurant_data.dart';
import 'package:food_delivery_app/data/user_data.dart';
import 'package:food_delivery_app/widgets/nearby_restaurants.dart';
import 'package:food_delivery_app/widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          iconSize: 32.0,
          onPressed: (){}, 
        ),
        title: const Text(
          "Food Delivery",
          style: TextStyle(
            fontSize: 16
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: (){}, 
            child: Text(
              "Cart (${currentUser.orders.length})",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                right: 25,
                left: 25,
                bottom: 10
              ),
              child: TextField(
                cursorColor: Colors.deepOrangeAccent,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.grey, size: 20),
                  suffixIcon: Icon(Icons.close, color: Colors.grey, size: 20),
                  hintText: "Search Food or Restaurants",
                  hintStyle: TextStyle(fontSize: 11.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50)
                    ),
                    borderSide: BorderSide(
                      color: Colors.deepOrangeAccent
                    )
                  )
                ),
              ),
            ),
            SizedBox(child: RecentOrders()),
            SizedBox(child: NearbyRestaurants())
          ],
        ),
      ),      
    );
  }
}




/**
 * 
 * 
 * Container(
              margin: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    child: Text(
                      element.address,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const SizedBox(
                    child: Text(
                      "0.2 miles away",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
            ),
 * 
 * 
 */