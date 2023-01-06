import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
