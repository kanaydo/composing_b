import 'package:composing/main.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final ChatData chatData;
  const ChatPage({
    Key? key,
    required this.chatData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chatData.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: ListView()
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
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
                        onPressed: () {},
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