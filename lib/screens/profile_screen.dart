// File: lib/screens/profile_screen.dart

import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';  // Import the custom AppBar
import '../custom_drawer.dart'; // Import your custom drawer

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 245, 245),
      appBar: CustomAppBar(appBarHeight: 85.0),  // Use the custom AppBar
      drawer: CustomDrawer(),  // Link to your custom drawer
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/doc1.jpg'), // Replace with your image asset
            ),
            const SizedBox(height: 10),
            const Text(
              'Roseline',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Roselinebabyxyz@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Edit profile action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1D787B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text('Edit Profile', style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(height: 20),
            buildSectionTitle(context, 'Personal Information'),
            buildPersonalInfoCard(context),
            const SizedBox(height: 20),
            buildSectionTitle(context, 'Health Settings'),
            buildHealthSettingsCard(context),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 16.0, bottom: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget buildPersonalInfoCard(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          buildMenuOption(context, 'Profile Details', Icons.person),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Payment Method', Icons.payment),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Insurance', Icons.verified_user),
        ],
      ),
    );
  }

  Widget buildHealthSettingsCard(BuildContext context) {
    return Card(
      color: Colors.white,

      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          buildMenuOption(context, 'Drug intake', Icons.medical_services),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Prescription history', Icons.history),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Refund status', Icons.receipt),
        ],
      ),
    );
  }

  Widget buildMenuOption(BuildContext context, String title, IconData icon) {
    return ListTile(
      
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: Icon(icon, size: 40.0, color: const Color(0xFF1D787B)), // Set icon size and color
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: () {
        // Navigate to the respective screen
      },
    );
  }
}
