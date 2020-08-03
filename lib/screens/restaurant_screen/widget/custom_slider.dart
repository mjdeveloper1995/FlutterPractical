import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:practicalflutterapp/screens/restaurant_screen/providers/slider_provider.dart';
import 'package:provider/provider.dart';

class CustomSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SliderProvider>(builder: (context, data, child) {
      return Stack(children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 150.0,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              onPageChanged: (index, onPa) {
                data.setCurrentPosition(double.parse(index.toString()));
              }),
          items: data.imageUrls.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/placeholder.png',
                    image: i,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
            bottom: 4,
            left: 0,
            right: 0,
            child: DotsIndicator(
              dotsCount: data.imageUrls.length,
              position: data.currentPosition,
              decorator:
                  DotsDecorator(color: Colors.white, activeColor: Colors.black),
            ))
      ]);
    });
  }
}
