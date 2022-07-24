import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/data/user_data.dart';
import 'package:food_delivery_app/models/order.dart';
import 'package:food_delivery_app/models/user.dart';

class ListViewCartScreen extends StatefulWidget {
  const ListViewCartScreen({Key? key}) : super(key: key);

  @override
  State<ListViewCartScreen> createState() => _ListViewCartScreenState();
}

class _ListViewCartScreenState extends State<ListViewCartScreen> {

  _buildListCart(Order cart) {
    return Container(
      margin: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0, right: 10),
      height: 100,
      child: Row(
        children: <Widget>[
          Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cart.food.imageUrl),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15.0)
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      cart.food.name, 
                      style: const TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    cart.restaurant.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.5
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            print("-");
                          },
                          child: const Text( 
                            "-",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16
                            ),
                          ),
                        ),
                        Text(cart.quantity.toString()),
                        GestureDetector(
                          onTap: (){
                            print("+");
                          },
                          child: const Text( 
                            "+",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: Text(
              "\$${cart.food.price * cart.quantity}",
              style: const TextStyle(
                fontWeight: FontWeight.w500
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    for (var price in currentUser.cart) {
      totalPrice += price.quantity * price.food.price;
    }

    return ListView.separated(
      itemCount: currentUser.cart.length + 2,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1.0,
          color: Colors.black,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        if (index < currentUser.cart.length) {
          Order cart = currentUser.cart[index];
          return _buildListCart(cart);
        }

        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 12, bottom: 8),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Estimated Delivery Time:",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    "25 min",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                  )
                ]
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 22 ),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Total Cost:",
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    "\$${totalPrice.toStringAsFixed(2)}",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ]
              ),
            ),
          ],
        );
      },
    );
  }
}