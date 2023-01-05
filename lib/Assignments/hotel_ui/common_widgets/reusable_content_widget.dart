import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReusableContentWidget extends StatelessWidget {
  const ReusableContentWidget(
      {Key? key,
      required this.money,
      required this.subtitle,
      required this.title,
      required this.url,
      required this.rating,
      required this.review})
      : super(key: key);
  final String url;
  final String title;
  final String subtitle;
  final double rating;
  final String review;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20,left: 10,right:10),
      child: Container(
        decoration:  BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Text(
                      "\$${money}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(url),fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Row(
                    children: [
                      RatingBar.builder(
                        initialRating: rating,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Text(
                        "($review review)",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
