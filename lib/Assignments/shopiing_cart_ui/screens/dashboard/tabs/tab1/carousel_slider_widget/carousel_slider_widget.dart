import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/dashboard.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    required this.position,
    required this.listLength,
    this.length=8,
    Key? key,
  }) : super(key: key);
  final int position;
  final int listLength;
  final int length;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) =>
          ReusableContainer(
            url:DashboardCart.items[position][index],
          ),
      itemCount:listLength,
      options: CarouselOptions(
        aspectRatio: 16 / length,
        pageSnapping: true,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    required this.url,
    Key? key,
  }) : super(key: key);
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(url))),
    );
  }
}