import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.blue,
            size: 40,
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.blue,
            size: 40,
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.linkedinIn,
            color: Colors.blue,
            size: 40,
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(
            FontAwesomeIcons.github,
            color: Colors.black,
            size: 40,
          ),
        ),
      ],
    );
  }
}
