import 'package:flutter/material.dart';

import '../home_screen_tab_two/tab_two.dart';
class AddSatusSection extends StatelessWidget {
  const AddSatusSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          title: const Text(
            "My status",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(Userinfo.items[0][0]),
          ),
          subtitle: Text("Tap to add status update"),
        ),
        const Positioned(
          bottom: 5,
          left: 45,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 15,
            child: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 13,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
