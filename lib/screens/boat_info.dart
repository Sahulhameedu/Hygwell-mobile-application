import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:hygwell/screens/passangers_detail.dart';

class BoatInfoScreen extends StatelessWidget {
  final String imageUrl;

  const BoatInfoScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // AppBar Icons
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.share, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Assam Travel Service',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'This hotel features air-conditioned cabins, plush seating, and an onboard dining area serving delicious local cuisine.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Wed, Jun20 - 2 Passengers',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const DottedDashedLine(
                    height: 16,
                    width: double.infinity,
                    axis: Axis.horizontal,
                    dashColor: Color(0xFFD1D0DD),
                  ),
                  buildSectionHeader('Amenities'),
                  buildBulletText('Clean Restrooms'),
                  buildBulletText('Comfortable Sitting arrangements'),
                  buildBulletText('Onboarding Dining'),
                  const SizedBox(height: 16),
                  const DottedDashedLine(
                    height: 16,
                    width: double.infinity,
                    axis: Axis.horizontal,
                    dashColor: Color(0xFFD1D0DD),
                  ),
                  buildSectionHeader('Safety Features'),
                  buildBulletText('Live jackets provided to all passengers.'),
                  buildBulletText('Emergency medical kit onboard.'),
                  const SizedBox(height: 16),
                  const DottedDashedLine(
                    height: 16,
                    width: double.infinity,
                    axis: Axis.horizontal,
                    dashColor: Color(0xFFD1D0DD),
                  ),
                  buildSectionHeader('Special notes'),
                  buildBulletText('Please arrive 30 minutes before departure.'),
                  buildBulletText('Carry a valid ID for verification.'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PassengerDetailsScreen(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade600,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Go to passenger details',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget buildBulletText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• ',
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
