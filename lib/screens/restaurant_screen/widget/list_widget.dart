import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 96.0,
                height: 96.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://specialedshortbus.com/wp-content/uploads/2020/01/52.jpg'),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      'Chicken Rice',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'choices/Addons available',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'MRP : ₹25.00',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      '₹30.00',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top:16,
          bottom: 16,
          right: 16,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Image.asset('assets/veg.png',
                height: 24,
                width: 24,),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text('Add',style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.grey,
            height: 1,
          ),
        )
      ],
    );
  }
}
