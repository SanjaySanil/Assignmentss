import 'package:flutter/material.dart';
import 'package:profile_ui/Assignments/whatsapp_ui_clone/common_widget/refactored_tab_cotainer.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Userinfo.items.length,
      itemBuilder: (context, index) => RefactoredTabContainer(
        url: Userinfo.items[index][0],
        time: Userinfo.items[index][1],
        message: Userinfo.items[index][2],
        name: Userinfo.items[index][3],
        displayDot: Userinfo.items[index][4],
      ),
    );
  }
}

class Userinfo {
  static List<dynamic> items = [
    [
      "https://play-lh.googleusercontent.com/cyxm7W-bX6Nf1yW7ChV08ItNy5YZmxYLKi2A-YHufe9oOmTj5wgmSzkS7gTAflukeRg",
      "12:30 PM",
      "eat sleep code repeat",
      "Sanjay Sanil",
      true
    ],
    [
      "https://static.javatpoint.com/top10-technologies/images/top-10-football-players3.png",
      "12:45 PM",
      "Hii",
      "Anand CB",
      false
    ],
    [
      "https://preview.redd.it/5ekuro1w8ib81.jpg?width=640&crop=smart&auto=webp&s=3d5614de7c0cfb7ba11f10cbae8905f32c3e4e09",
      "05:22 PM",
      "code aykk",
      "Pavan Kumar",
      true
    ],
    [
      "https://variety.com/wp-content/uploads/2015/12/will-smith-actors-on-actors-variety.jpg",
      "01:30 PM",
      "provider nokk",
      "Shihab Salim",
      false
    ],
    [
      "https://i.pinimg.com/236x/91/31/44/9131440612e59272ca2fc2421873dca8.jpg",
      "12:00 PM",
      "eat sleep code repeat",
      "Anees Hassainar",
      true
    ],
    [
      "https://profilepicture7.com/a_img_d/article_img/1/714583640.jpg",
      "yesterday",
      "eat sleep code repeat",
      "Fazalul Abid",
      true
    ],
    [
      "https://i.pinimg.com/236x/8a/7c/4b/8a7c4be53e37cde907f09197e20a15fb--male-celebrities-hot-martin-schoeller.jpg",
      "yesterday",
      "eat sleep code repeat",
      "Sharafath Ali",
      true
    ],
    [
      "https://profilepicture7.com/a_img_d/article_img/1/714583640.jpg",
      "yesterday",
      "eat sleep code repeat",
      "Nandhu Reji",
      true
    ],
    [
      "https://profilepicture7.com/a_img_d/article_img/1/714583640.jpg",
      "yesterday",
      "eat sleep code repeat",
      "Anandhu Sunil",
      true
    ],
    [
      "https://profilepicture7.com/a_img_d/article_img/1/714583640.jpg",
      "yesterday",
      "eat sleep code repeat",
      "Aljo Augustine",
      true
    ],
    [
      "https://profilepicture7.com/a_img_d/article_img/1/714583640.jpg",
      "yesterday",
      "eat sleep code repeat",
      "Suhail Salim",
      true
    ],
  ];
}
