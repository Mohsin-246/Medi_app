// File: lib/home_page.dart

import 'package:flutter/material.dart';
import 'timeline_tab.dart';
import 'custom_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 236, 235, 235),
        appBar: AppBar(
          toolbarHeight: 85,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xFF1D787B),
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
              icon: Icon(
                Icons.message_outlined,
                size: 30.0,
                color: Color(0xFF1D787B),
              ),
              onPressed: () {
                // Notifications action
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFF1D787B),
            labelColor: Color(0xFF1D787B),
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
            Center(child: Text("Health Update Content Here")), // Second tab content
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // FAB action
          },
          child: Icon(Icons.add, color: Colors.white,),
          backgroundColor: Colors.teal,
          shape: CircleBorder(),  // Ensures the button is round
        ),
      ),
    );
  }
}
