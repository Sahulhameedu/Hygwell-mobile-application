import 'package:flutter/material.dart';
import 'package:hygwell/widgets/availableboat/boat_card.dart';

import '../utils/assets.dart';

class AvailableBoatsScreen extends StatelessWidget {
  const AvailableBoatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6BA7EB),
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boarding point',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              'Wed, Jun 20 - 2 passengers',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6BA7EB),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.white)),
            ),
            child: const Text(
              'Modify',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Material(
            elevation: 3,
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Text(
                  'Showing available boats',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Assets.boatServices.length,
              itemBuilder: (context, index) {
                return BoatCard(service: Assets.boatServices[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
