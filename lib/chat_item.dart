import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Colors.lightBlue.shade100,
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
                    const Text(
                      'Bayu Angga Wijaya',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check,
                          size: 15,
                          color: Colors.lightBlue,
                        ),
                        Text('okee')
                      ],
                    )
                  ],
                ),
              )
          ),
          const Text(
            'yesterday',
            style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}
