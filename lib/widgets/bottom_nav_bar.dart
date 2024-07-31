// // File: lib/widgets/bottom_nav_bar.dart

// import 'package:flutter/material.dart';

// class CustomBottomNavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70.0, // Set the desired height here
//       child: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed, // Ensures even spacing between items
//         selectedItemColor: Colors.teal,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.store),
//             label: 'Store',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.health_and_safety),
//             label: 'Health',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
