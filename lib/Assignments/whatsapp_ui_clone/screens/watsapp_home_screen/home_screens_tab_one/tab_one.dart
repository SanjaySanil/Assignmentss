import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListTile(
          title: Text("New Community"),
          contentPadding: EdgeInsets.all(20),
          leading: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(15)),
            height: 100,
            width: 55,
            child: Icon(Icons.groups, color: Colors.white, size: 35),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left:55,top:55),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
              child: CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 10,
                child: Icon(
                  Icons.add,
                  size: 18,
                ),
              )),
        )
      ]),
    );
  }
}
