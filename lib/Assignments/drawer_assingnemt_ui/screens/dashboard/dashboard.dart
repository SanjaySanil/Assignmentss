import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import '../../common_widget/reusable_list_tile.dart';

class DashBoardWidget extends StatelessWidget {
  DashBoardWidget({Key? key}) : super(key: key);
  List data = [
    [Icons.space_dashboard_outlined, "Dashboard"],
    [Icons.group_add_outlined, "Leads"],
    [Icons.groups_sharp, "Clients"],
    [Icons.rocket_launch, "Projects"],
    [Icons.handshake, "Partners"],
    [Icons.subscriptions, "Subscription"],
    [Icons.payment, "Payment"],
    [Icons.person, "Users"],
    [Icons.layers, "Library"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SliderDrawer(
          sliderOpenSize: MediaQuery.of(context).size.width * 0.8,
          appBar: const SliderAppBar(
            title: Text(
              "App Bar",
              style: TextStyle(fontSize: 25),
            ),
          ),
          slider: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffffb56b),
                  Color(0xffca485c),
                ],
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      const ListTile(
                        title: Text(
                          "Lionel Messi",
                          style: TextStyle(color: Colors.white70),
                        ),
                        subtitle: Text(
                          "Argentina",
                          style: TextStyle(color: Colors.white70),
                        ),
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://images.news18.com/ibnlive/uploads/2022/12/lionel-messi-16710055844x3.jpg"),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) => ReusableListTile(
                            text: data[index][1], icon: data[index][0]),
                        shrinkWrap: true,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffff624f),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: const Text("Sign Out"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          child: Container(),
        ),
      ),
    );
  }
}
