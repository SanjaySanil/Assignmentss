import 'package:flutter/material.dart';

class ReusableCircleAvatarWidget extends StatelessWidget {
  const ReusableCircleAvatarWidget(
      {Key? key, this.color, required this.radius, this.image, this.child})
      : super(key: key);
  final double radius;
  final AssetImage? image;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: image,
      radius: radius,
      backgroundColor: color,
      child: child,
    );
  }
}
