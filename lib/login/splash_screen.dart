import 'package:flutter/material.dart';
import 'package:spacex/adapt_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatelessWidget {
  final Color backgroundColor;
  final Color spinnerColor;
  const SplashScreen(
      {Key key,  this.backgroundColor,  this.spinnerColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
      ),
      child: SpinKitThreeBounce(
        color: spinnerColor,
        size: AdaptScreen.px(25),
      ),
    );
  }
}
