import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan composing'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
              border: Border.all(
                color: Colors.red,
                width: 2
              )
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: FlutterLogo(),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Bayu Angga Wijaya'),
                          Row(
                            children: const [
                              Icon(Icons.check),
                              Text('okee')
                            ],
                          )
                        ],
                      ),
                    )
                ),
                const Text('yesterday')
              ],
            ),
          ),
        ],
      ),
    );
  }
}