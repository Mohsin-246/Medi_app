// File: lib/widgets/custom_app_bar.dart

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;

  CustomAppBar({this.appBarHeight = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xFF1D787B),  // Teal color background
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
          icon: Icon(
            Icons.message_outlined,
            size: 30.0,
            color: Color(0xFF1D787B),  // Icon color set to teal
          ),
          onPressed: () {
            // Notifications action
          },
        ),
      ],
      backgroundColor: Colors.white,  // White background for AppBar
      elevation: 0,  // Remove shadow
      toolbarHeight: appBarHeight,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}