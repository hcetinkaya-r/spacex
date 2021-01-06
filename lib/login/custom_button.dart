import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final operation;
  final String buttonText;
  final action;
  CustomButton(
      {@required this.operation,
        @required this.buttonText,
        @required this.action});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constrains) {
      return Material(
        elevation: action == null ? 7.0 : 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: action == null ? Theme.of(context).canvasColor : Theme.of(context).primaryColor,
        child: MaterialButton(

          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(
            constrains.maxWidth * 0.08,
            constrains.maxHeight * 0.2,
            constrains.maxWidth * 0.08,
            constrains.maxHeight * 0.2,
          ),
          onPressed: action,
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.button.fontSize,
                color: action == null ? Colors.grey : Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ),
      );
    });
  }
}
