import 'package:hive_flutter/hive_flutter.dart';

class Session {
  final box = Hive.box('session');

  void setLogin() {
    box.put('IS_LOGIN', true);
  }

  bool isLogin() {
    return box.get('IS_LOGIN') ?? false;
  }
}