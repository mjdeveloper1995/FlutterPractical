import 'package:flutter/material.dart';
import 'package:practicalflutterapp/screens/add_own_screen/widgets/multiple_option.dart';
import 'package:practicalflutterapp/screens/add_own_screen/widgets/one_option.dart';
import 'package:practicalflutterapp/utils/custom_appbar.dart';

class AddOwnScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Chicken Rice',[]),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12.0),
        child: Column(children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const OneOption('Base'),
                  const SizedBox(
                    height: 24,
                  ),
                  const OneOption('Size'),
                  const SizedBox(
                    height: 24,
                  ),
                  const MultipleOption('Toppings'),
                  const SizedBox(
                    height: 24,
                  ),
                  const MultipleOption('Cutlery')
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48.0),
              color: Colors.blueAccent,
            ),
            child: const Text(
              'ADD ₹399',
              style: TextStyle(color: Colors.white,fontSize: 20.0),
            ),
          )
        ]),
      ),
    );
  }
}
