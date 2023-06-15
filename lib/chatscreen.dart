import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'ChatMessage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final String text = _controller.text;

    if (_controller.text.isNotEmpty) {
      ChatMessage message = ChatMessage(
        text: text,
        name: "User",
      );

      setState(() {
        _messages.insert(0, message);
      });

      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height * 0.01);
    return Scaffold(
      backgroundColor: Color(0xFF2A2B30),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFF797E8B)),
        backgroundColor: Color(0xFF1E1E1E),
        title: const Text(
          "ChatGPT",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 86, 88, 110),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Flexible(
            // child: Container(height: size.height),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: ListView.builder(
                reverse: true,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 0, 8.0, 16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    showCursor: _controller.text.isNotEmpty ? true : false,
                    enableInteractiveSelection: false,
                    controller: _controller,
                    decoration: InputDecoration(
                        hintText: "Type a message...",
                        hintStyle: TextStyle(color: Color(0xFF797E8B)),
                        border: InputBorder.none),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    _sendMessage();
                  },
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
