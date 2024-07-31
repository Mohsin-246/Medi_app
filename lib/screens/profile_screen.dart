// File: lib/screens/profile_screen.dart

import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';  // Import the custom AppBar
import '../custom_drawer.dart'; // Import your custom drawer

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 245, 245),
      appBar: CustomAppBar(appBarHeight: 85.0),  // Use the custom AppBar
      drawer: CustomDrawer(),  // Link to your custom drawer
      body: SingleChildScrollView(
        
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'), // Replace with your image asset
            ),
            SizedBox(height: 10),
            Text(
              'Roseline',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Roselinebabyxyz@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Edit profile action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF1D787B),
                
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text('Edit Profile', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 20),
            buildSectionTitle(context, 'Personal Information'),
            buildMenuOption(context, 'Profile Details', Icons.person),
            buildMenuOption(context, 'Payment Method', Icons.payment),
            buildMenuOption(context, 'Insurance', Icons.verified_user),
            SizedBox(height: 20),
            buildSectionTitle(context, 'Health Settings'),
            buildMenuOption(context, 'Drug intake', Icons.medical_services),
            buildMenuOption(context, 'Prescription history', Icons.history),
            buildMenuOption(context, 'Refund status', Icons.receipt),
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
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
            
          ),
        ),
      ),
    );
  }

  Widget buildMenuOption(BuildContext context, String title, IconData icon) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF1D787B)),
        title: Text(title),
        
        
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          // Navigate to the respective screen
        },
      ),
    );
  }
}
