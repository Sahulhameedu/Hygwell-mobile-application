import 'package:flutter/material.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

class AddOnsPage extends StatelessWidget {
  final int baseFare = 4000;

  const AddOnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add-Ons"),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 1,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Assam Travel Service',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildTimeCard('7:00 AM', 'From'),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: DottedDashedLine(
                            height: 0,
                            width: 15,
                            axis: Axis.horizontal,
                            dashColor: Color(0xFFD1D0DD),
                          ),
                        ),
                        const Icon(Icons.directions_boat, color: Colors.blue),
                        const Expanded(
                          child: DottedDashedLine(
                            height: 0,
                            width: 15,
                            axis: Axis.horizontal,
                            dashColor: Color(0xFFD1D0DD),
                          ),
                        ),
                        const SizedBox(width: 10),
                        buildTimeCard('3:00 PM', 'To'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const DottedDashedLine(
                      height: 0,
                      width: double.infinity,
                      axis: Axis.horizontal,
                      dashColor: Color(0xFFD1D0DD),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.people, color: Colors.black54),
                            SizedBox(width: 8),
                            Text('2 Seats', style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Text("₹ $baseFare")
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              _buildSectionTitle("Additional services"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Transportation Options",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "Cab service pickUp and dropOff at Station; driver details will be shared via WhatsApp.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Private Car (4 Seater)"),
                              Text("₹ 500")
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E79E1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Private Car (4 Seater)"),
                              Text("₹ 500")
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E79E1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Private Car (4 Seater)"),
                              Text("₹ 500")
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E79E1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              ),
              // meal selection
              const SizedBox(height: 16),
              const DottedDashedLine(
                height: 16,
                width: double.infinity,
                axis: Axis.horizontal,
                dashColor: Color(0xFFD1D0DD),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Meal Selection",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // const SizedBox(height: 12),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Breakfast & Snacks"),
                              Text("₹ 500")
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 83,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E79E1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              ),
              // Other recommendations
              const SizedBox(height: 16),
              const DottedDashedLine(
                height: 16,
                width: double.infinity,
                axis: Axis.horizontal,
                dashColor: Color(0xFFD1D0DD),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Other Recommendations",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // const SizedBox(height: 12),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Tour Guide"), Text("₹ 1,500")],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E79E1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              ),
              // Insurance Section
              const SizedBox(height: 16),
              const DottedDashedLine(
                height: 16,
                width: double.infinity,
                axis: Axis.horizontal,
                dashColor: Color(0xFFD1D0DD),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Insurance",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Insurance"),
                              Text("At just ₹ 50 per passenger get :"),
                              Text("Insurance Coverage"),
                              Text("Upto ₹ 5,00,00 in case of Death/PTD"),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1E79E1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              const DottedDashedLine(
                height: 16,
                width: double.infinity,
                axis: Axis.horizontal,
                dashColor: Color(0xFFD1D0DD),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text("₹ 2,500"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => const AddOnsPage(),
                    // ));
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
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget buildTimeCard(String time, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
