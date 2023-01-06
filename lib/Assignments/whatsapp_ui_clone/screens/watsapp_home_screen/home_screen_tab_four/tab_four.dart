import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_two/tab_two.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              const ListTile(
                title: Text("Create call link"),
                subtitle: Text("Share a link for your Whatsapp call"),
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 35,
                  child: Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text("Recent"),
              ),
              ListTile(
                trailing: const Icon(
                  Icons.call,
                  color: Colors.teal,
                ),
                contentPadding: EdgeInsets.all(0),
                subtitle: Row(
                  children: const [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                      size: 20,
                    ),
                    Text("January 2,5:28 PM")
                  ],
                ),
                title: Text(Userinfo.items[2][3]),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(Userinfo.items[1][0]),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                subtitle: Row(
                  children: const [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                      size: 20,
                    ),
                    Text("January 2,5:28 PM")
                  ],
                ),
                trailing: const Icon(
                  Icons.videocam,
                  color: Colors.teal,
                ),
                title: Text(Userinfo.items[5][3]),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(Userinfo.items[2][0]),
                ),
              ),
              ListTile(
                trailing: const Icon(
                  Icons.call,
                  color: Colors.red,
                ),
                contentPadding: EdgeInsets.all(0),
                subtitle: Row(
                  children: const [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                      size: 20,
                    ),
                    Text("January 2,5:28 PM")
                  ],
                ),
                title: Text(Userinfo.items[1][3]),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(Userinfo.items[3][0]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
