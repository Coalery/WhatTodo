import 'package:app/dummy/dummy.dart';
import 'package:app/unit/todo_unit.dart';
import 'package:app/widget/todo_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String routeName = '/main_page';

  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 8),
            itemCount: Dummy.data.length,
            itemBuilder: (_, index) => TodoWidget(todo: TodoUnit.fromJsonString(Dummy.data[index])),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Dialog
        },
      ),
    );
  }
}