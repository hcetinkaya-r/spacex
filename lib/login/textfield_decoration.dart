import 'package:flutter/material.dart';
import 'package:spacex/adapt_screen.dart';

class TextFieldDecoration {
  InputDecoration loginDeco(context) {
    return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 55.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide(),
      ),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
