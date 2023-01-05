import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/staggered_grid_view/screens/reusable_continer.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      [
        "Rains Update:He..",
        "10 May 2013\nVincent Van Gogh",
        "https://images.news18.com/ibnlive/uploads/2021/10/kerala-floods-2-16343892334x3.jpg"
      ],
      [
        "Mystery of Paris..",
        "10 May 2013\nVincent Van Gogh",
        "https://images.pexels.com/photos/699466/pexels-photo-699466.jpeg?cs=srgb&dl=pexels-flo-dahm-699466.jpg&fm=jpg"
      ],
      [
        "See why this new smartwatch is gaining...",
        "10 May 2013\nVincent Van Gogh",
        "https://www.dailynewsnetwork.org/watch/blog/info/english/images/akrales_171113_2119_0045.png?v=1606212006"
      ],
      [
        "Its Been Long day..",
        "10 May 2013\nVincent Van Gogh",
        "https://i.pinimg.com/564x/75/33/1d/75331dad35e79e806388181ec8d5ac4e--collage-portrait-collage-artists.jpg"
      ],
      [
        "Dulquer Salmaan Wants to Thank..",
        "10 May 2013\nVincent Van Gogh",
        "https://images.news18.com/ibnlive/uploads/2022/12/dulquer-salmaan-2-16722800253x2.jpg?impolicy=website&width=510&height=356"
      ],
      [
        "Dulquer Salmaan Wants to Thank..",
        "10 May 2013\nVincent Van Gogh",
        "https://content.fortune.com/wp-content/uploads/2017/09/rtr2l7yn.jpg"
      ],
      [
        "Dulquer Salmaan Wants to Thank..",
        "10 May 2013\nVincent Van Gogh",
        "https://images.news18.com/ibnlive/uploads/2022/12/dulquer-salmaan-2-16722800253x2.jpg?impolicy=website&width=510&height=356"
      ],
    ];
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text("Daily Updates"),
        backgroundColor: Colors.teal.shade900,
      ),
      backgroundColor: Colors.grey.shade400,
      body: StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(2, index.isEven ? 3 : 4);
        },
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: items.length,
        padding: const EdgeInsets.all(4),
        itemBuilder: (context, index) => ReusableContainer(
          title: items[index][0],
          subtitle: items[index][1],
          url: items[index][2],
        ),
      ),
    );
  }
}
