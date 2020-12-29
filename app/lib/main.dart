import 'package:flutter/material.dart';

import 'package:app/page/main_page.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => MainPage()
      },
    );
  }
}