// File: lib/home_page.dart

import 'package:flutter/material.dart';
import 'timeline_tab.dart';
import 'custom_drawer.dart';
import 'screens/chat_room_screen.dart'; // Import ChatRoomScreen

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9F9),
        appBar: AppBar(
          toolbarHeight: 85,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 30.0,
                  color: Color(0xFF1D787B),
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer(); // Accesses the Scaffold context
                },
              );
            },
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFF03989F),
                child: Text(
                  'MH',
                  style: TextStyle(
                    fontSize: 24, // Larger text
                    color: Colors.white,
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
                color: Color(0xFF1D787B),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatRoomScreen()),
                );
              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFF03989F),
            labelColor: Color(0xFF03989F),
            unselectedLabelColor: Color(0xFF999999),
            labelStyle: TextStyle(
              fontSize: 14.0, // Font size for the selected tab
              fontWeight: FontWeight.bold, // Font weight for the selected tab
            ),
            tabs: [
              Tab(text: "Timeline"),
              Tab(text: "Health Update"),
            ],
          ),
        ),
        drawer: CustomDrawer(), // Link to the custom drawer
        body: TabBarView(
          children: [
            TimelineTab(), // First tab content
            const Center(child: Text("Health Update Content Here")), // Second tab content
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // FAB action
          },
          child: const Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.teal,
          shape: const CircleBorder(),  // Ensures the button is round
        ),
      ),
    );
  }
}
