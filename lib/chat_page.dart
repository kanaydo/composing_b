import 'package:composing/main.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final ChatData chatData;
  const ChatPage({
    Key? key,
    required this.chatData
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  String message = '';
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chatData.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Center(
                  child: Text(message),
                )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.green,
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          String msg = messageController.text;

                          setState(() {
                            message = msg;
                          });
                        },
                        icon: Icon(Icons.send)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}