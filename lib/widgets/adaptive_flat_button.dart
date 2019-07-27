import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String btnText;
  final Function btnHandler;

  AdaptiveFlatButton(this.btnText, this.btnHandler);

  @override
  Widget build(BuildContext context) {
    final btnChild = Text(
      btnText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    );

    return Platform.isIOS
        ? CupertinoButton(
            child: btnChild,
            onPressed: btnHandler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: btnChild,
            onPressed: btnHandler,
          );
  }
}
