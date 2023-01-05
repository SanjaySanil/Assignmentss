import 'package:flutter/material.dart';

import '../../common_widget/reusable_circle_avatar_widgett/reusable_circle_avatar.dart';
import '../../constants/image_constants.dart';
import '../../constants/text_constants.dart';

class MainScreenHeaderWidget extends StatelessWidget {
  const MainScreenHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Image(
              image: AssetImage(tScreenOneBgImage),
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 140,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ReusableCircleAvatarWidget(
                      radius: 30,
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      color: Colors.red,
                    ),
                    ReusableCircleAvatarWidget(
                      radius: 63,
                      color: Colors.white,
                      child: ReusableCircleAvatarWidget(
                        radius: 60,
                        image: AssetImage(tScreenOneProfileImage),
                      ),
                    ),
                    ReusableCircleAvatarWidget(
                      radius: 30,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(tMainScreenTitle,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                Text(
                  tMainScreenSubTitle,
                  style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
