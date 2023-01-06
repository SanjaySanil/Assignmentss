import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_ui/Assignments/shopiing_cart_ui/screens/dashboard/tabs/tab1/tab_one.dart';
import 'tabs/tab2/tabTwo.dart';
import 'tabs/tab3/tabThree.dart';

class DashboardCart extends StatelessWidget {
  DashboardCart({Key? key}) : super(key: key);
  List itemsName = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavors",
    "Gourmet Salads"
  ];
  static List items = [
    [
      "https://naldzgraphics.net/wp-content/uploads/2010/07/Never-Reach-2-o.jpg",
      "https://www.adsoftheworld.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbjBrIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e2f848693ac6bc108a9b764496f4aaf289ba23e5/thumbnail_401463",
      "https://vietnamcredit.com.vn/Media/Top-5-fruit-and-vegetables-companies-in-Vietnam-01.jpg"
    ],
    [
      "https://tse2.mm.bing.net/th?id=OIP.0MoAScUqBPSrAt5RK_bTwwHaDR&pid=Api&P=0",
      "https://tse4.mm.bing.net/th?id=OIP.fBlAmUUKMwofI5JPsead1AHaEj&pid=Api&P=0"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.leaf), label: "HOME"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "CART"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_outlined), label: "ACCOUNT"),
            ],
            selectedItemColor: Colors.green,
          ),
          body: TabBarView(
            children: [
              TabOne(itemsName: itemsName, items: items),
              const TabTwo(),
              const TabThree(),
            ],
          )),
    );
  }
}
