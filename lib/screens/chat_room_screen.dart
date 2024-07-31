import 'package:flutter/material.dart';
import 'chat_screen.dart';

class ChatRoomScreen extends StatelessWidget {
  final List<Map<String, String>> users = [
    {'name': 'Dr. Hanry', 'specialty': 'Cardiologist', 'message': 'Hi, nice to meet you. How can I help...', 'image': 'assets/doc1.jpg'},
    {'name': 'Dr. Joseph Steven', 'specialty': 'Cardiologist', 'message': 'Hi, nice to meet you. How can I help...', 'image': 'assets/alpha.jpg'},
    {'name': 'Dr. David', 'specialty': 'Cardiologist', 'message': 'Hi, nice to meet you. How can I help...', 'image': 'assets/doc3.jpeg'},
    {'name': 'Dr. Mathew', 'specialty': 'Cardiologist', 'message': 'Hi, nice to meet you. How can I help...', 'image': 'assets/doc4.jpg'},
    {'name': 'Dr. Jaquline', 'specialty': 'Cardiologist', 'message': 'Hi, nice to meet you. How can I help...', 'image': 'assets/doc5.jpg'},
    
  
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Chat Room',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: users.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(users[index]['image']!),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        users[index]['name']!,
                        style: const TextStyle(fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(users[index]['image']!),
                  ),
                  title: Text(users[index]['name']!),
                  subtitle: Text('${users[index]['specialty']}\n${users[index]['message']}'),
                  isThreeLine: true,
                  trailing: const Text('1 min ago'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatScreen()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      
    );
  }
}
