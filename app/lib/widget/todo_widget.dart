import 'package:app/unit/todo_unit.dart';
import 'package:app/widget/conditional_widget.dart';
import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final TodoUnit _todo;

  TodoWidget({
    Key key,
    @required TodoUnit todo
  })
  : assert(todo != null),
    this._todo = todo,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5
          ),
        ]
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _todo.title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          ConditionalWidget(
            condition: _todo.content != null && _todo.content.isNotEmpty,
            trueWidget: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                _todo.content,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            )
          )
        ],
      ),
    );
  }
}