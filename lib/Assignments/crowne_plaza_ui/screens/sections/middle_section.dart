import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MiddelSection extends StatelessWidget {
  const MiddelSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 30,
            itemPadding: EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.purple,
             ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          contentPadding: EdgeInsets.all(20),
          subtitle: Row(
            children: const [
              Icon(CupertinoIcons.location_solid),
              Text("8 km to LuluMall"),
            ],
          ),
          trailing: Column(
            children: [
              const Text(
                "\$ 200",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "/per night",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), backgroundColor: Colors.purple),
                    onPressed: () {},
                    child: const Text(
                      "Book Now",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "DESCRIPTION",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Celebrate business success at the Crowne Plaza Kochi with a touch of leisure and panoramic views of backwaters and exquisite cuisine combined with rejuvenation at our Aira Spa.Crowne Plaza Kochi is ideally located on the new business district of city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city.\n Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate up to 900 people, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events.",
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.justify,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
