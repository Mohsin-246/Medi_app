import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({
          'text': _controller.text,
          'isSentByMe': true,
          'time': DateTime.now(),
        });
        _controller.clear();
      });
    }
  }

  Widget _buildMessage(Map<String, dynamic> message) {
    return Align(
      alignment:
          message['isSentByMe'] ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: message['isSentByMe'] ? Colors.teal[50] : Colors.grey[200],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(message['text']),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/doc1.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DR. John Doe",
                  style: TextStyle(
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15.0),
                ),
                Row(children: [
                  Icon(
                    Icons.location_on,
                    size: 12.0,
                    color: Color.fromARGB(255, 58, 55, 55),
                  ),
                  Text(
                    "Shareef Abad MSAG",
                    style: TextStyle(
                        color: Color(0xFF888888),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12.0),
                  ),
                ])
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Add functionality for more options if needed
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(messages[index]);
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 8.0, top: 8.0, bottom: 8.0),
              height: 54.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 22.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          FloatingActionButton(
            onPressed: _sendMessage,
            backgroundColor: Color(0xFF03989F),
            
            shape: const CircleBorder(),
            child: const SizedBox(
              width: 60.0, // Increased width for a larger button
              height: 60.0, // Increased height for a larger button
              child: Icon(Icons.send,
                  color: Colors.white, size: 30.0), // Larger icon size
            ),
          ),
        ],
      ),
    );
  }
}
class InsetShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color(0xFF03989F)
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 10);
    
    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final RRect rrect = RRect.fromRectAndRadius(rect, Radius.circular(size.width / 2));
    
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
