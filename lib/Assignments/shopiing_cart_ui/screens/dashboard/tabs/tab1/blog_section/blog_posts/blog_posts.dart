import 'package:flutter/material.dart';

class BlogPosts extends StatelessWidget {
  BlogPosts({
    required this.url,
    required this.title,
    required this.time,
    Key? key,
  }) : super(key: key);
  final String title;
  final String time;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey.shade300),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(5),
          topLeft: Radius.circular(5),
        ),
      ),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(url)),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  5,
                ),
                topRight: Radius.circular(5),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style:TextStyle(fontSize:13,fontWeight:FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${time} minutes ago",
                  style: TextStyle(color: Colors.grey,fontSize:12),
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
