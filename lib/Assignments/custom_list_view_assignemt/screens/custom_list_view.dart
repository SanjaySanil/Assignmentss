import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: ListView.custom(childrenDelegate:SliverChildListDelegate([
          Container(
            width: 400,
            height:600,
            color: Colors.red,
          ),
          Container(
            width: 400,
            height:600,
            color: Colors.yellow,
          ),
          Container(
            width: 400,
            height:600,
            color: Colors.green,
          ),
          Container(
            width: 400,
            height:600,
            color: Colors.grey,
          ),
          Container(
            width: 400,
            height:600,
            color: Colors.blueGrey,
          ), Container(
            width: 400,
            height:600,
            color: Colors.blue,
          ), Container(
            width: 400,
            height:600,
            color: Colors.black54,
          ),




        ])),
      ),
    );
  }
}
