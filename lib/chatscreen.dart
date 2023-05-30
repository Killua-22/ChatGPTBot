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
      body: Column(children: [
        Expanded(
          child: Container(height: size.height),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: size.width * 0.025, right: size.width * 0.025, bottom: 15),
          child: SizedBox(
            // height: size.height * 0.78,
            width: size.width * 0.95,
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(right: 20),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Color(0xFF797E8B),
                  ),
                ),
                hintStyle: TextStyle(color: Color(0xFF797E8B)),
                hintText: "Type a message...",
                filled: true,
                fillColor: Color(0xFF40414F),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
      ]),
      // ),
    );
  }
}
