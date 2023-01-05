import 'package:flutter/material.dart';

import '../home_screen_tab_two/tab_two.dart';
class StorySection extends StatelessWidget {
  const StorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Userinfo.items.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Column(
        children: [
          ListTile(
            title: Text(
              Userinfo.items[index][3],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(Userinfo.items[index][2]),
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                backgroundImage: NetworkImage(Userinfo.items[index][0]),
                radius: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
