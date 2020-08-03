import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/providers/category_provider.dart';
import 'package:provider/provider.dart';

class HorizontalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(builder: (context, data, child) {
      return Container(
        width: double.infinity,
        height: 56,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.tabItems.length,
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        data.setPosition(index);
                      },
                      child: Text(
                        data.tabItems[index],
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
                    height: index == data.selectedPosition ? 2 : 1,
                    color: index == data.selectedPosition
                        ? Colors.blueAccent
                        : Colors.grey,
                  ),
                )
              ],
            );
          },
        ),
      );
    });
  }
}
