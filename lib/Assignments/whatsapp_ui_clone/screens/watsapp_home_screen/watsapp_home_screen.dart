import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/floating_action_button/floating_action_button.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_four/tab_four.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_three/tab_three.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/screens/watsapp_home_screen/home_screen_tab_two/tab_two.dart';
import '../../constants/color_constants.dart';
import '../../constants/text_constant.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemFour, itemFive, itemSix }

class WhatsAppHomeScreen extends StatefulWidget {
  const WhatsAppHomeScreen({Key? key}) : super(key: key);

  @override
  State<WhatsAppHomeScreen> createState() => _WhatsAppHomeScreenState();
}

class _WhatsAppHomeScreenState extends State<WhatsAppHomeScreen> {
  int initialValue = 0;
  SampleItem? selectedMenu;
  bool displayFloatingButton = false;
  List<IconData> iconsData = [
    Icons.message,
    Icons.chat,
    Icons.camera_alt_outlined,
    Icons.add_call
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: displayFloatingButton
            ? FloatingActionButtonWidget(
                icon: iconsData[initialValue],
              )
            : Container(),
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.all(0),
            onTap: (value) {
              setState(
                () {
                  initialValue = value;
                  initialValue == 0
                      ? displayFloatingButton = false
                      : displayFloatingButton = true;
                },
              );
            },
            indicatorWeight: 3,
            indicatorColor: Colors.white,
            tabs: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: Tab(icon: Icon(Icons.groups))),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Tab(text: tabOneTitle)),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: Tab(
                  text: tabTwoTitle,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .3,
                child: Tab(
                  text: tabThreeTitle,
                ),
              ),
            ],
          ),
          backgroundColor: mainColor,
          title: Text(appbarTitle),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            PopupMenuButton<SampleItem>(
              initialValue: selectedMenu,
              // Callback that sets the selected popup menu item.
              onSelected: (SampleItem item) {
                setState(
                  () {
                    selectedMenu = item;
                  },
                );
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
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
              color: Colors.black54,
              height: double.infinity,
            ),
            ChatScreen(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
