// File: lib/custom_drawer.dart

import 'package:flutter/material.dart';
import 'dart:ui';
import 'widgets/drawer_header.dart';
// Ensure this import statement is correct
import 'widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 275,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              CustomDrawerHeader(),
              DrawerItem(icon: Icons.article_outlined, text: 'Articles', onTap: () {}),
              DrawerItem(icon: Icons.book_outlined, text: 'Courses', onTap: () {}),
              DrawerItem(icon: Icons.video_library_outlined, text: 'Documentries', onTap: () {}),
              DrawerItem(icon: Icons.forum_outlined, text: 'Forum', onTap: () {}),
              DrawerItem(icon: Icons.bar_chart_outlined, text: 'Statistics', onTap: () {}),
              DrawerItem(icon: Icons.person_outline, text: 'Investors', onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
