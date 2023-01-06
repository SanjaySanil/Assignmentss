import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.meetingsbooker.com/images/venues/crowneplazamarlow-32.jpg"),
                      fit: BoxFit.cover)),
              child: SafeArea(
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.topCenter,
                      child: Text("DETAILS",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Crowne Plaza",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        const Text(
                          "Kochi,Kerala",
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(7),
                              child: const Text(
                                "8.4/85 reviews",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Icon(
                              CupertinoIcons.heart,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              title: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30,
                itemPadding: EdgeInsets.symmetric(horizontal: 0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              contentPadding: EdgeInsets.all(0),
              subtitle: Row(
                children: [
                  Icon(CupertinoIcons.location_solid),
                  Text("8 km to LuluMall"),
                ],
              ),
              trailing: Column(
                children: [
                  Text(
                    "\$ 200",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "/per night",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.purple),
                onPressed: () {},
                child: Text(
                  "Book Now",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20),
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DESCRIPTION",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Celebrate business success at the Crowne Plaza Kochi with a touch of leisure and panoramic views of backwaters and exquisite cuisine combined with rejuvenation at our Aira Spa.Crowne Plaza Kochi is ideally located on the new business district of city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city.\n Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate up to 900 people, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events.",
                            style: TextStyle(fontSize: 15),textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
              ),
              label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
