import 'package:composing/chat_item.dart';
import 'package:composing/login_page.dart';
import 'package:composing/session.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('session');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    final session = Session();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: session.isLogin() ? MyPage() : LoginPage(),
    );
  }
}

class ChatData {
  final String name;
  final String lastChat;
  final String lastSeen;
  ChatData({
    required this.name,
    required this.lastChat,
    required this.lastSeen
  });
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final data = [
    ChatData(
      name: 'Tony Stark',
      lastChat: 'apa kabar?',
      lastSeen: 'one month ago'
    ),
    ChatData(
        name: 'Steve Rogers',
        lastChat: 'okee',
        lastSeen: 'today'
    ),
    ChatData(
        name: 'Natasha Romonav',
        lastChat: 'otw',
        lastSeen: 'yesterday'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan composing'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final chat = data[index];
          return ChatItem(
            chatData: chat,
          );
        },
      ),
    );
  }
}