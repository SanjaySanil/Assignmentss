import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'cutomer_review/customer_review.dart';

class CustomerSection extends StatelessWidget {
  CustomerSection({
    Key? key,
  }) : super(key: key);
  List review = [
    [
      "Prince PI",
      "https://www.mrdustbin.com/us/wp-content/uploads/2021/11/thomas-felton.jpg",
      "cto Rappid Value",
      " I am a regular customer of Farmers Fresh Zone & needless to say, I am extremely satisfied with their service & service quality! The deliveries are quick, products are fresh & I save time and effort by ordering online. The best part is, I get all of this at a really reasonable price! "
    ],
    [
      "Alosious CM",
      "https://www.entoin.com/images/bbl50.jpg",
      "cto Rappid Value",
      "           I was extremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing that sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm, it was a great experience to take a look at the beautiful farms!  "
    ],
    [
      "Dinesh Thampi",
      "https://www.sheknows.com/wp-content/uploads/2021/09/ROBERT-PATTINSON-1.jpg?w=546",
      "VP operations TCS",
      " Being a customer of Farmers Fresh Zone, I can definitely say that I am extremely pleased with their service. You can choose from a wide range of products, all of which are 100% Fresh & Natural. I appreciate their efforts in providing healthy food to the customer & helping the livelihood of farmers at the same time.  "
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          const Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "What our Customers Says?",
              style: TextStyle(fontSize:15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 30),
            child: CarouselSlider.builder(
              itemCount: review.length,
              itemBuilder: (context, index, realIndex) => CustomerReviewSection(
                content: review[index][3],
                url: review[index][1],
                position: review[index][2],
                name: review[index][0],
              ),
              options: CarouselOptions(
                aspectRatio: 16 /9,
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
            ),
          ),
          const Text(
            "This Kochi-based-farm-to-fork-online marketplace is connecting farm directly to customers",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13),
          ),
          Container(
              margin: EdgeInsets.only(top: 10),
              height: 56,
              child: const Image(
                image: AssetImage("assets/images/screen_one/shoppingcart.png"),
              )),
        ],
      ),
    );
  }
}
