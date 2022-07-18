import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/data/user_data.dart';
import 'package:food_delivery_app/models/order.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 250.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1,
          color: Colors.grey.shade300
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: MediaQuery.of(context).size.height,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image(
                image: AssetImage(order.restaurant.imageUrl), fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(bottom: 2.5),
                  child: Text(
                    order.food.name,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2.5),
                  child: Text(
                    order.restaurant.name,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    order.date,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
            child: FloatingActionButton(
              onPressed: (){},
              backgroundColor: Colors.deepOrangeAccent,
              child: const Icon(Icons.add, size: 18),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Recent Orders",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80.0,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext context, int index) {
                Order order = currentUser.orders[index];
                return _buildRecentOrder(context, order);
              }
            ),
          ) 
        ],
      ),
    );
  }
}