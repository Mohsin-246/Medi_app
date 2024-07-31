// File: lib/widgets/post_card.dart

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 255, 255),
      margin: EdgeInsets.symmetric(vertical: 10),
      
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            
            Row(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/doc1.jpg'), // Your local image
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Roseline",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "50 minutes ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(height: 10),
            Text("Dear Medihub network, Good Morning!"),
            SizedBox(height: 10),
            Image.asset('assets/pharm1.jpg'), // Replace with network image or actual image asset
            SizedBox(height: 10),
            Row(
              children: const [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/doc1.jpg'), // Your local image
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "mark z. and 36 others liked this",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Text(
                  "26 Comments",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
            Divider(), // Adds a divider between the sections

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(width: 5),
                    Text("Like"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined),
                    SizedBox(width: 5),
                    Text("Comment"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.share),
                    SizedBox(width: 5),
                    Text("Share"),
                  ],
                ),
              ],
            ),
            
          ],
          
        ),
      ),
    );
  }
}
