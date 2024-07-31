// File: lib/widgets/drawer_header.dart

import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0), // Move the drawer header upwards
      child: DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xFF1D787B),
              child: Text('MH', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200, // Background color for the icon
                shape: BoxShape.circle, // Circular shape
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () {
                  Navigator.of(context).pop(); // Close the drawer
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
