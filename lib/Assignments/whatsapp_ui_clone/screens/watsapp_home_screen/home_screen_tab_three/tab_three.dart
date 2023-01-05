import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_three/story_section.dart';
import 'add_status_section.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddSatusSection(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Recent updates",
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            StorySection(),
          ],
        ),
      ),
    );
  }
}


