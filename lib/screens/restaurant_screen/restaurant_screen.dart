import 'package:flutter/material.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/providers/data_provider.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/widget/custom_slider.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/widget/horizontal_tab.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/widget/info_widget.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/widget/list_widget.dart';
import 'package:practicalflutterapp/utils/custom_appbar.dart';
import 'package:provider/provider.dart';

class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        'LEMON RESTAURANT',
        <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search, size: 28.0),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications_none, size: 28.0),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            CustomSlider(),
            InfoWidget(),
            HorizontalTab(),
            Consumer<DataProvider>(builder: (context, data, child) {
              return Expanded(
                child: ListView.builder(
                  itemCount: data.items.length,
                  itemBuilder: (context, index) {
                    return ListWidget();
                  },
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
