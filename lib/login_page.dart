import 'package:composing/main.dart';
import 'package:composing/session.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final session = Session();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                label: Text('username'),
                hintText: 'username'
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  label: Text('password'),
                  hintText: 'password'
              ),
              obscureText: true,
            ),
            ElevatedButton(
                onPressed: () {
                  final username = usernameController.text;
                  final password = passwordController.text;
                  if (username == 'user' && password == '123456') {

                    session.setLogin();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('login berhasil'),
                        backgroundColor: Colors.green,
                      )
                    );
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyPage()
                        )
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('username atau password salah'),
                          backgroundColor: Colors.red,
                        )
                    );
                  }
                },
                child: Text('login')
            )
          ],
        ),
      ),
    );
  }
}
