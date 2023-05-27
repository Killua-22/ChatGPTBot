import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF2A2B30),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E1E),
        title: const Text(
          "ChatGpt",
          style: TextStyle(
            fontSize: 25,
            color: Color(0xFF40414F),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(children: [
        Container(height: size.height * 0.78),
        Container(
          // height: size.height * 0.2,
          width: size.width * 0.95,
          child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Color(0xFF797E8B)),
              hintText: "Type a message...",
              filled: true,
              fillColor: Color(0xFF40414F),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ]),
      // ),
    );
  }
}
