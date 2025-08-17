import 'package:flutter/material.dart';
import 'package:stylish_e_commerce/core/themes/app_colors.dart';

abstract class AppStyles {
  static TextStyle styleBold40(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      fontFamily: 'Libre Caslon Text',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleExtraBold24(BuildContext context) {
    return TextStyle(
      //color: const Color(0xFF69BDFD),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
    );
  }

  static TextStyle styleBold36(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 36),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle stylesemiBold14(BuildContext context) {
    return TextStyle(
      color: Color(0xffA8A8A9), //#FA7189
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle stylesemiBold18(BuildContext context) {
    return TextStyle(
      color: AppColors.primaryColor, //#C4C4C4   , black
      fontSize: getResponsiveFontSize(context, fontSize: 18), //(20,black)
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle stylesemiBold34(BuildContext context) {
    return TextStyle(
      color: Colors.white, 
      fontSize: getResponsiveFontSize(context, fontSize: 34), 
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle stylesRegular14(BuildContext context) {
    return TextStyle(
      color: Color(0xff575757),
      fontSize: getResponsiveFontSize(context,
          fontSize: 14),     //(12,#676767,primaryColor)
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle stylesRegular12(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 12), //(10),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle stylesMedium16(BuildContext context) {
    return TextStyle(
      color: Colors.black,
      fontSize: getResponsiveFontSize(context, fontSize: 16), //14
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle stylesMedium18(BuildContext context) {
    return TextStyle(
      color: Color(0xffA8A8A9),
      fontSize: getResponsiveFontSize(context, fontSize: 18), //16
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 1000) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
