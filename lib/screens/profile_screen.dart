// File: lib/screens/profile_screen.dart

import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart'; // Import the custom AppBar
import '../custom_drawer.dart'; // Import your custom drawer

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFFF8F9F9), // Ensure the scaffold background is white
      extendBodyBehindAppBar: false,

      appBar: CustomAppBar(appBarHeight: 85.0), // Use the custom AppBar
      drawer: CustomDrawer(), // Link to your custom drawer
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              width: 100, // Set the size of the avatar
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green, // Set the border color to green
                  width: 1.0, // Set the border width
                ),
              ),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/prof1.png'), // Replace with your image asset
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Roseline',
              style: TextStyle(
                fontSize: 18.0,

                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins', // Set the Poppins font
              ),
            ),
            const Text(
              'Roselinebabyxyz@gmail.com',
              style: TextStyle(
                fontSize: 12.0,

                color: Colors.grey,
                fontFamily: 'Poppins', // Set the Poppins font
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 150.0, // Set the desired width
              child: ElevatedButton(
                onPressed: () {
                  // Edit profile action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF03989F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text('Edit Profile',
                    style: TextStyle(color: Colors.white, fontFamily: 'Poppins' , fontSize: 12.0)),
              ),
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
            fontSize: 18.0,  // Font size 14px
            fontWeight: FontWeight.w600,  // Font weight 600
            fontFamily: 'Poppins',
            color: Color(0xFF374A48)  // Font family Poppins
              // Line height (21px / 14px)
          ),
          textAlign: TextAlign.left,  // Align text to the left
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
          buildMenuOption(context, 'Profile Details', 'assets/icon_images/profile.png'),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Payment Method', 'assets/icon_images/credit-card.png'),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Insurance', 'assets/icon_images/shield.png'),
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
          buildMenuOption(context, 'Drug intake', 'assets/icon_images/schedule.png'),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Prescription history', 'assets/icon_images/health-report.png'),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          buildMenuOption(context, 'Refund status', 'assets/icon_images/refund.png'),
        ],
      ),
    );
  }

  Widget buildMenuOption(BuildContext context, String title, String imagePath) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      leading: Image.asset(
        imagePath,
        width: 32.0,  // Set image width
        height: 32.0, // Set image height
        fit: BoxFit.contain,
      ),
      title: Text(
        title,
        style: const TextStyle(
          
          fontWeight: FontWeight.w500,
          fontFamily: 'Poppins',  // Set the Poppins font
          fontSize: 14.0,  
          color: Color(0xFF374A48) // Set font size to 14px
           // Set line height
        ),
        textAlign: TextAlign.left,  // Align text to the left
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 17.0,),
      onTap: () {
        // Navigate to the respective screen
      },
    );
  }
}