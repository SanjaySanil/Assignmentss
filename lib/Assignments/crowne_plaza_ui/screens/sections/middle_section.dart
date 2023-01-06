import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiddelSection extends StatelessWidget {
  const MiddelSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "DESCRIPTION",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Celebrate business success at the Crowne Plaza Kochi with a touch of leisure and panoramic views of backwaters and exquisite cuisine combined with rejuvenation at our Aira Spa.Crowne Plaza Kochi is ideally located on the new business district of city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city.\n Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate up to 900 people, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events.",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
