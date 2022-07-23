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
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: currentUser.cart.length,
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1.0,
          color: Colors.black,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        Order cart = currentUser.cart[index];
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
                      const SizedBox(height: 10),
                      Text(
                        cart.restaurant.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
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
      },
    );
  }
}