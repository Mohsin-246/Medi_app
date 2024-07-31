import 'package:flutter/material.dart';
import 'widgets/post_card.dart';

class TimelineTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: 5, // For demonstration, number of posts
      itemBuilder: (context, index) {
        return PostCard();
      },
    );
  }
}