import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('username'),
                hintText: 'username'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text('password'),
                  hintText: 'password'
              ),
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text('login')
            )
          ],
        ),
      ),
    );
  }
}
