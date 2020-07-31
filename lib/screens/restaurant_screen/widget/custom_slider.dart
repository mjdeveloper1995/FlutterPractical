import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final List<String> _imageUrls = [
    'https://specialedshortbus.com/wp-content/uploads/2020/01/52.jpg',
    'https://add.eventland.eu/uploads/1578513197-hQqmW.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4G8qi5-o-0jzyG4Rylf8D2fJAxjvM4JSRhg&usqp=CAU'
  ];
  double currentPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            onPageChanged: (index,onPa){
              setState(() {
                currentPosition = double.parse(index.toString());
              });
            }
          ),
          items: _imageUrls.map((i) {
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
              dotsCount: _imageUrls.length,
              position: currentPosition,
              decorator:
                  DotsDecorator(color: Colors.white, activeColor: Colors.black),
            ))
      ],
    );
  }
}
