import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/profile_ui/screens/profile_page/social_media_section.dart';

import 'bottom_items.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  List data = [
    [Icons.privacy_tip_outlined, "Privacy", Icons.arrow_forward_ios],
    [Icons.refresh, "Purchase History", Icons.arrow_forward_ios],
    [Icons.help_outline, "Help & Support ", Icons.arrow_forward_ios],
    [Icons.settings, "Settings", Icons.arrow_forward_ios],
    [Icons.person_add_alt, "Invite a friend", Icons.arrow_forward_ios],
    [Icons.logout, "Logout", Icons.arrow_forward_ios],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.segment),
                ),
              ),
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://cdn.musebycl.io/2020-09/Leo-Messi-Never-Give-Up-on-Greatness-hed-2020.jpg"),
              ),
              SizedBox(height: 30),
              SocialMediaSection(),
              SizedBox(height: 30),
              Text(
                "Sanjay Sanil",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text("@webrror"),
              SizedBox(height: 20),
              const Text(
                "Mobile App Developer",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) => BottomItems(
                    text: data[index][1],
                    iconData: data[index][0],
                    trailingIcon: data[index][2],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

