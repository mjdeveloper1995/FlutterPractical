import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalTab extends StatefulWidget {
  @override
  _HorizontalTabState createState() => _HorizontalTabState();
}

class _HorizontalTabState extends State<HorizontalTab> {
  final List<String> _tabItems = [
    'Bestseller',
    'Soups',
    'Main Course',
    'Rice',
    'Snacks'
  ];
  int position =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _tabItems.length,
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:12.0),
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        position = index;
                      });
                    },
                    child: Text(
                      _tabItems[index],
                      style: const TextStyle(fontSize: 24.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: index == position ? 2 :1,
                  color: index == position ?Colors.blueAccent : Colors.grey,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
