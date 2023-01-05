import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/floating_action_button/floating_action_button.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_three/tab_three.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_two/tab_two.dart';

import '../../constants/color_constants.dart';
import '../../constants/text_constant.dart';

enum SampleItem { itemOne, itemTwo, itemThree,itemFour,itemFive,itemSix }
class WatsAppHomeScreen extends StatefulWidget {
  const WatsAppHomeScreen({Key? key}) : super(key: key);

  @override
  State<WatsAppHomeScreen> createState() => _WatsAppHomeScreenState();
}

class _WatsAppHomeScreenState extends State<WatsAppHomeScreen> {
  SampleItem? selectedMenu;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButtonWidget(),
        appBar: AppBar(
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: tabOneTitle),
              Tab(
                text: tabTwoTitle,
              ),
              Tab(
                text: tabThreeTitle,
              ),
            ],
          ),
          backgroundColor: mainColor,
          title: Text(appbarTitle),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            PopupMenuButton<SampleItem>(
              initialValue: selectedMenu,
              // Callback that sets the selected popup menu item.
              onSelected: (SampleItem item) {
                setState(() {
                  selectedMenu = item;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemOne,
                  child: Text('New groups'),
                ),
                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemTwo,
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Text("Linked devices"),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Text("Starred messages"),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Text("Payment"),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Text("Settings"),
                ),
              ],
            ),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            Container(
              width: double.infinity,
              color: Colors.green,
              height: double.infinity,
            ),
            ChatScreen(),
            Status(),
            Container(
              width: double.infinity,
              color: Colors.blue,
              height: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
