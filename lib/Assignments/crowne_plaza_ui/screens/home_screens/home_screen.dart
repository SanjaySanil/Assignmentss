import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../sections/header_section.dart';
import '../sections/middle_section.dart';

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
                  children: const [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text("DETAILS",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                    HeaderSection()
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
                children: const [
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
            MiddelSection(),
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
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
