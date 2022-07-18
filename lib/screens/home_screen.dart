import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";
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
      backgroundColor: Colors.grey.shade200,
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
            child: const Text(
              "Cart (5)",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            )
          )
        ],
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: const <Widget>[
            SizedBox(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 25,
                  left: 25,
                  bottom: 15
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
            ),
            SizedBox(child: RecentOrders())
          ],
        ),
      ),      
    );
  }
}