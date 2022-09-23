import 'package:flutter/widgets.dart';
import 'package:hotels_booking/core/resourses/font_manager.dart';

//TextStyle builder method
TextStyle _getTextStyle({
  double? fontSize,
  String? fontFamily,
  Color? color,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,
  );
}

///regular TextStyle
TextStyle getRegularTextStyle(
    {double fontSize = FontSize.small, Color? color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontName,
      color: color,
      fontWeight: FontWeights.regular);
}

///light TextStyle
TextStyle getLightTextStyle({double fontSize = FontSize.small, Color? color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontName,
      color: color,
      fontWeight: FontWeights.light);
}

///medium TextStyle
TextStyle getMediumTextStyle({double fontSize = FontSize.small, Color? color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontName,
      color: color,
      fontWeight: FontWeights.medium);
}

///bold TextStyle
TextStyle getBoldTextStyle({double fontSize = FontSize.large, Color? color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontName,
      color: color,
      fontWeight: FontWeights.bold);
}
