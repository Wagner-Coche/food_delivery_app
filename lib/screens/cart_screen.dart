import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/data/user_data.dart';
import 'package:food_delivery_app/widgets/listview_cart_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Cart (${currentUser.cart.length})",
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios, 
            size: 20
          )
        ),
      ),
      body: const ListViewCartScreen(),
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 10),
        height: 80,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [ 
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
                "CHECKOUT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3
                ),
              ),
            ),
            Container(
              height: 5,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
      ),
    );
  }
}