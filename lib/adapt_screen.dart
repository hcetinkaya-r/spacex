import 'package:flutter/material.dart';
import 'dart:ui';

class AdaptScreen {
  static MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static double _width = mediaQuery.size.width;
  static double _height = mediaQuery.size.height;
  static double _topbarH = mediaQuery.padding.top;
  static double _botbarH = mediaQuery.padding.bottom;
  static double _pixelRatio = mediaQuery.devicePixelRatio;
  static var _ratio;
  static var _ratioHeight;
  static init(int number) {
    int uiwidth = number is int ? number : 400;
    _ratio = _width / uiwidth;
  }

  static initH(int number) {
    int uiheight = number is int ? number : 750;
    _ratioHeight = _height / uiheight;
  }

  static px(number) {
    if (!(_ratio is double || _ratio is int)) {
      AdaptScreen.init(400);
    }
    return number * _ratio;
  }

  static pxH(number) {
    if (!(_ratioHeight is double || _ratioHeight is int)) {
      AdaptScreen.initH(750);
    }
    return number * _ratioHeight;
  }

  static onepx() {
    return 1 / _pixelRatio;
  }

  static screenW() {
    return _width;
  }

  static screenH() {
    return _height;
  }

  static padTopH() {
    return _topbarH;
  }

  static padBotH() {
    return _botbarH;
  }
}
