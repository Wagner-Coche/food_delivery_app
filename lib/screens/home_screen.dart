import "package:flutter/material.dart";
import "package:flutter/cupertino.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}