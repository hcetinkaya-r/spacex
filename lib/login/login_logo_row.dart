import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacex/adapt_screen.dart';

class LoginLogoRow extends StatelessWidget {
  final pageName;

  LoginLogoRow(this.pageName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 3,
                child: SvgPicture.asset('assets/logo/logo.svg'),
              ),
              Flexible(
                flex: 6,
                child: FittedBox(
                  child: Text(
                    pageName,
                    style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.headline6.fontFamily,
                        fontSize: AdaptScreen.pxH(30),
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
         Text("Login to your existing accoubt by entering your e-mail and your password."),
        ],
      ),
    );
  }
}
