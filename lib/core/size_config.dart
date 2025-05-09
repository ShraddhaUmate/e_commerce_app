import 'package:flutter/widgets.dart';

class SizeConfig {
   late MediaQueryData _mediaQueryData;

  static double screenWidth=0.0;
  static double screenHeight=0.0;//(H)=h+b
  static double safeUsedHeight=0.0;//(h)=H-b

  static double screenTop=0.0;
  static double screenBottom=0.0;//b
  static double blockSizeHorizontal=0.0;
  static double blockSizeVertical=0.0;
  static double safeAreaHorizontal=0.0;
  static double safeAreaVertical=0.0;
  static double safeBlockHorizontal=0.0;
  static double safeBlockVertical=0.0;
   static double textMultiplier=0.0;
   static double buttonSize = blockSizeHorizontal * 5;
   static double fontSize = 0;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenTop = _mediaQueryData.padding.top;
    screenBottom = _mediaQueryData.padding.bottom;
    safeUsedHeight=screenHeight-screenBottom;
    textMultiplier = blockSizeVertical;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    fontSize = blockSizeHorizontal < blockSizeVertical
        ? blockSizeHorizontal * 4 // Adjust this value as needed
        : blockSizeVertical * 4;

    safeAreaHorizontal = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    safeAreaVertical = _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - safeAreaVertical) / 100;




  }
   static bool get isMobile => screenWidth < 600;
   static bool get isTablet => screenWidth >= 600 && screenWidth < 1020;
}