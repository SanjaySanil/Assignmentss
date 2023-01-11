import 'package:flutter/material.dart';

import 'blog_posts/blog_posts.dart';

class BlogSection extends StatelessWidget {
  BlogSection({
    Key? key,
  }) : super(key: key);
  List items = [
    ["Mattuthuvani vegetable market..", "https://static.toiimg.com/thumb/imgsize-123456,msid-96744687,width-300,resizemode-4/96744687.jpg", "1"],
    ["Mumbai:As Winter sets in ,ve..", "https://static.toiimg.com/thumb/imgsize-123456,msid-96723449,width-300,resizemode-4/96723449.jpg", "3"],
    ["Control Blood Pressure the..", "https://static.toiimg.com/thumb/imgsize-123456,msid-95840091,width-300,resizemode-4/95840091.jpg", "7"],
    ["This is how freshly harvested..", "https://static.toiimg.com/thumb/imgsize-123456,msid-96822033,width-300,resizemode-4/96822033.jpg", "8"],
    ["In Kerala ,there ..", "https://static.toiimg.com/thumb/imgsize-123456,msid-95990267,width-300,resizemode-4/95990267.jpg", "9"],
    ["Tamil Nadu:3 killed in road", "https://static.toiimg.com/thumb/imgsize-123456,msid-95087931,width-300,resizemode-4/95087931.jpg", "15"],
    ["120-140 per kg normal for man...", "https://static.toiimg.com/thumb/imgsize-123456,msid-95779499,width-300,resizemode-4/95779499.jpg", "30"],
    ["Mumbai:Veggies go through roof ..", "https://static.toiimg.com/thumb/imgsize-123456,msid-95571910,width-300,resizemode-4/95571910.jpg", "45"],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Our Blog Posts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize:17),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10, right: 10),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Row(
                children: [
                  BlogPosts(
                    title: items[index][0],
                    url: items[index][1],
                    time: items[index][2],
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "VIEW MORE",
                style: TextStyle(fontSize: 15, color: Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
