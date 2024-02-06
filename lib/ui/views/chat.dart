import 'package:flutter/material.dart';
import 'package:steam_app/ui/views/colors.dart';
import 'package:steam_app/ui/views/drawer.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController _messageController = TextEditingController();
  List<String> _messages = [];


  void _sendMessage() {
    setState(() {
      String message = _messageController.text;
      _messages.add("You: $message");
      _messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: homeColor,
        title: Text('Chat',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index], style: TextStyle(color: Colors.white),),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send,color: Colors.white,),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}