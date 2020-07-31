import 'package:flutter/material.dart';

class DeliveryType extends StatefulWidget {
  @override
  _DeliveryTypeState createState() => _DeliveryTypeState();
}

class _DeliveryTypeState extends State<DeliveryType> {
  String _radioValue = 'Delivery'; //Initial definition of radio button value
  String choice = 'Delivery';
  final List<String> _list = ['Delivery', 'Pickup'];
  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      choice = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Radio(
              value: _list[0],
              groupValue: _radioValue,
              onChanged: radioButtonChanges,
              activeColor: Colors.blueAccent,
            ),
            Text(_list[0], style: const TextStyle(fontSize: 18.0)),
          ],
        ),
        Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Radio(
              value: _list[1],
              groupValue: _radioValue,
              onChanged: radioButtonChanges,
              activeColor: Colors.blueAccent,
            ),
            Text(_list[1], style: const TextStyle(fontSize: 18.0)),
            const SizedBox(width: 16.0,)
          ],
        ),
      ],
    );
  }
}
