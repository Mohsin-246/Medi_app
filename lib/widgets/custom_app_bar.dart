// File: lib/widgets/custom_app_bar.dart

import 'package:flutter/material.dart';
import '../screens/chat_screen.dart'; // Import ChatScreen

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;

  CustomAppBar({this.appBarHeight = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white, 
      surfaceTintColor: Colors.transparent, // Ensure the AppBar stays white
      elevation: 0,  // Remove shadow under AppBar
      
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30.0,
              color: Color(0xFF1D787B),  // Icon color set to teal
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        },
      ),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xFF03989F),  // Teal color background
            child: Text(
              'MH',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,  // White text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.message_outlined,
            size: 30.0,
            color: Color(0xFF1D787B),  // Icon color set to teal
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatScreen()),
            );
          },
        ),
      ],
      toolbarHeight: appBarHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
  
}
