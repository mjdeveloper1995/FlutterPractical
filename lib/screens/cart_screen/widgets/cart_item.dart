import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  final List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       ... _items.map((e) {
         return Container(
           padding: const EdgeInsets.all(8.0),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color: Colors.blueAccent,width: 1)
           ),
           child: Text('hy'),
         );
       })
      ],
    );
  }
}
