
import 'package:flutter/material.dart';

class AddOnsPage extends StatefulWidget {
  const AddOnsPage({super.key});

  @override
  _AddOnsPageState createState() => _AddOnsPageState();
}

class _AddOnsPageState extends State<AddOnsPage> {
  // Transportation Options
  final List<Map<String, dynamic>> transportationOptions = [
    {"name": "Private Car (4 Seater)", "price": 500},
    {"name": "Private Car (7 Seater)", "price": 500},
    {"name": "Shared Rides", "price": 500},
  ];

  // Selected Transportation (Initially empty)
  Map<String, dynamic>? selectedTransportation;

  bool isEditingTransportation = false; // Toggles "Add" vs "Edit" modes

  // Add Transportation Function
  void _addTransportation(Map<String, dynamic> option) {
    setState(() {
      selectedTransportation = option;
      isEditingTransportation = false;
    });
  }

  // Edit Transportation Function
  void _editTransportation() {
    setState(() {
      isEditingTransportation = true;
    });
  }

  // Remove Transportation Function
  void _removeTransportation() {
    setState(() {
      selectedTransportation = null;
      isEditingTransportation = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add-Ons"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            _buildHeader(),

            // Transportation Options
            _buildTransportationSection(),

            // Bill Breakdown
            _buildBillBreakdown(),

            // Continue Button
            _buildContinueButton(),
          ],
        ),
      ),
    );
  }

  // Header Section
  Widget _buildHeader() {
    return const Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text("Assam Travel Service", style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("7:00 AM - 3:00 PM"),
            Text("2 Seats | ₹ 2,500"),
          ],
        ),
      ),
    );
  }


  Widget _buildTransportationSection() {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            title: Text("Transportation Options", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          if (!isEditingTransportation && selectedTransportation != null)
            ListTile(
              title: Text(selectedTransportation!['name']),
              subtitle: Text("₹ ${selectedTransportation!['price']}"),
              trailing: TextButton(
                onPressed: _editTransportation,
                child: const Text("Edit", style: TextStyle(color: Colors.blue)),
              ),
            ),
          if (isEditingTransportation || selectedTransportation == null)
            ...List.generate(transportationOptions.length, (index) {
              final option = transportationOptions[index];
              return ListTile(
                title: Text(option['name']),
                subtitle: Text("₹ ${option['price']}"),
                trailing: IconButton(
                  icon: const Icon(Icons.add_circle, color: Colors.blue),
                  onPressed: () => _addTransportation(option),
                ),
              );
            }),
          if (selectedTransportation != null && isEditingTransportation)
            Center(
              child: ElevatedButton(
                onPressed: _removeTransportation,
                style: ElevatedButton.styleFrom(iconColor: Colors.red),
                child: const Text("Remove Transportation"),
              ),
            ),
        ],
      ),
    );
  }

  // Bill Breakdown Section
  Widget _buildBillBreakdown() {
    int total = 2500; // Default base price
    if (selectedTransportation != null) {
      total += selectedTransportation!['price'] as int;
    }

    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            title: Text("Bill Breakdown", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const ListTile(
            title: Text("2 Passengers"),
            trailing: Text("₹ 2,500"),
          ),
          if (selectedTransportation != null)
            ListTile(
              title: Text("Transportation: ${selectedTransportation!['name']}"),
              trailing: Text("₹ ${selectedTransportation!['price']}"),
            ),
          const Divider(),
          ListTile(
            title: const Text("Total (taxes included)", style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text("₹ $total"),
          ),
        ],
      ),
    );
  }

  // Continue Button
  Widget _buildContinueButton() {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          iconColor: Colors.amber,
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () {
          // Handle continue action
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Continue Button Pressed")),
          );
        },
        child: const Text("Continue", style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }
}