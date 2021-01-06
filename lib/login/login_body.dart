import 'package:flutter/material.dart';
import 'package:spacex/adapt_screen.dart';
import 'package:spacex/login/login_logo_row.dart';
import 'package:spacex/login/textfield_decoration.dart';

class LoginBody extends StatelessWidget {
  final String pageName;
  final Widget formBody;

  const LoginBody({this.pageName, this.formBody});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.grey.shade200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            flex: 2,
            child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: AdaptScreen.px(20)),
                child: LoginLogoRow(pageName)),
          ),
          Flexible(
            flex: 5,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, AdaptScreen.px(10), 0, 0),
              height: double.infinity,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(AdaptScreen.px(30)),
                  topRight: Radius.circular(AdaptScreen.px(30)),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: formBody,
            ),
          ),
        ],
      ),
    );
  }
}
