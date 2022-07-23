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
    return SizedBox(
      child: Scaffold(
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
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Center(
                child: Text(       
                  "Cart (${currentUser.orders.length})",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
              )
            )
          ],
        ),
        body: SingleChildScrollView(
          reverse: false,
          physics: const BouncingScrollPhysics(),
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
      ),
    );
  }
}