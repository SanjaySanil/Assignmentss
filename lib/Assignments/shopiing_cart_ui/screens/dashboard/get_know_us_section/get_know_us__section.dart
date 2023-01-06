import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetKnowUsSection extends StatelessWidget {
  const GetKnowUsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Get To Know Us",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "About Us | Our Farmers | Blog",
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          const Text(
            "Useful Links",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Privacy Policy | Return & Refund Policy | Terms & Condition",
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                FontAwesomeIcons.twitter,
                color: Colors.grey,
              ),
              Icon(
                FontAwesomeIcons.youtube,
                color: Colors.grey,
              ),
              Icon(
                FontAwesomeIcons.facebook,
                color: Colors.grey,
              ),
              Icon(
                FontAwesomeIcons.instagram,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
