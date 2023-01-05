import 'package:flutter/material.dart';
import '../../common_widgets/reusable_container.dart';
import '../../common_widgets/reusable_content_widget.dart';
import 'dashboard_appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List items = [
      [
        "Boudha,Kathmandu",
        "Awesome room near Bouddha",
        "https://www.tajhotels.com/content/dam/tajhotels/ihcl/vivanta/vivanta_sikkim_ihcl.jpg",
        "220",
        "450",
        5.0
      ],
      [
        "Boudha,Kathmandu",
        "Awesome room near Bouddha",
        "https://www.tripsavvy.com/thmb/jMyV9jJZi70RnxjDgF-uMZKvBKg=/2800x2200/filters:fill(auto,1)/Four-Seasons-Hotel-Macao-Lobby-Ken-Seet-5abd8edd04d1cf0037616ed0.jpg",
        "220",
        "550",
        4.0
      ],
      [
        "Boudha,Kathmandu",
        "Awesome room near Bouddha",
        "https://idsb.tmgrup.com.tr/ly/uploads/images/2020/07/02/thumbs/1200x600/44180.jpg",
        "220",
        "200",
        3.2
      ],
      [
        "Boudha,Kathmandu",
        "Awesome room near Bouddha",
        "https://www.greekairtaxinetwork.com/wp-content/uploads/amirandes-crete-min.jpg",
        "220",
        "110",
        3.00
      ]
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            HeaderAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ReusableContainer(
                        iconData: Icons.hotel,
                        text: "Hotel",
                        color: Colors.pink),
                    ReusableContainer(
                        iconData: Icons.restaurant,
                        text: "Restaurant",
                        color: Colors.blueAccent),
                    ReusableContainer(
                        iconData: Icons.local_cafe,
                        text: "Cafe",
                        color: Colors.orange),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: items.length,
                (BuildContext context, int index) => ReusableContentWidget(
                  title: items[index][0],
                  subtitle: items[index][1],
                  url: items[index][2],
                  review: items[index][3],
                  money: items[index][4],
                  rating: items[index][5],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
