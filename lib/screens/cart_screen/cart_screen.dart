import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicalflutterapp/screens/cart_screen/widgets/cart_item.dart';
import 'package:practicalflutterapp/screens/cart_screen/widgets/delivery_type.dart';
import 'package:practicalflutterapp/utils/custom_appbar.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'ADD TO CART', []),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            DeliveryType(),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36.0),
                color: const Color.fromARGB(255, 173, 222, 255),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Add More Items'),
                  Icon(Icons.add_circle_outline,size: 20.0,)
                ],
              ),
            ),
            const SizedBox(height: 16),
            CartItem(),
          ],
        ),
      ),
    );
  }
}
