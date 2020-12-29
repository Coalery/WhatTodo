import 'package:flutter/material.dart';

class ConditionalWidget extends StatelessWidget {
  final bool _condition;
  final Widget _trueWidget;
  final Widget _falseWidget;

  ConditionalWidget({
    Key key,
    @required bool condition,
    @required Widget trueWidget,
    Widget falseWidget
  })
  : assert(condition != null),
    assert(trueWidget != null),
    this._condition = condition,
    this._trueWidget = trueWidget,
    this._falseWidget = falseWidget ?? SizedBox(),
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return _condition ? _trueWidget : _falseWidget;
  }
}