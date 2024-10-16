import 'package:flutter/material.dart';
import 'views/pages/base_widget.dart';
import 'views/pages/login_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ramble',
      home: isLoggedIn ? const BaseWidget() : const LogInWidget(),
    );
  }
}
