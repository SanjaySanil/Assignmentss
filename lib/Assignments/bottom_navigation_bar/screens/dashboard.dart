import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            label:"Ticket"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:"Settings"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label:"Profile"
          ),
        ],
      ),
      body: Container(),
    );
  }
}
