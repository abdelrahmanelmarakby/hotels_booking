import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manager.dart';
import 'font_styles_manager.dart';
import 'size_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      //main colors of the app
      scaffoldBackgroundColor: Color.fromARGB(255, 247, 245, 245),
      primaryColor: ColorsManger.primary,
      primaryColorLight: ColorsManger.primary.withOpacity(.7),
      disabledColor: ColorsManger.grey,
      platform: TargetPlatform.iOS,
      splashColor: ColorsManger.primary.withOpacity(.7),

      //card theme for the cards
      cardTheme: CardTheme(
        color: ColorsManger.white,
        shadowColor: ColorsManger.grey,
        elevation: AppSize.size4,
        margin: const EdgeInsets.all(AppMargin.margin8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: AppSize.size4,
        iconTheme: const IconThemeData(color: ColorsManger.primary),
        backgroundColor: ColorsManger.primary,
        shadowColor: ColorsManger.grey1,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: ColorsManger.primary, // Navigation bar
          statusBarColor: ColorsManger.primary, // Status bar
        ),
        titleTextStyle: getRegularTextStyle(
            color: ColorsManger.white, fontSize: AppSize.size18),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: ColorsManger.primary,
        disabledColor: ColorsManger.grey1,
        splashColor: ColorsManger.primary.withOpacity(.7),
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: ColorsManger.primary,
          textStyle: getRegularTextStyle(
            color: ColorsManger.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      textTheme: TextTheme(
          headline1: getMediumTextStyle(
              color: ColorsManger.darkGrey, fontSize: AppSize.size18),
          subtitle1: getMediumTextStyle(
              color: ColorsManger.darkGrey, fontSize: AppSize.size16),
          subtitle2: getMediumTextStyle(
              color: ColorsManger.darkGrey, fontSize: AppSize.size14),
          caption: getRegularTextStyle(
            color: ColorsManger.grey1,
          ),
          bodyText1: getRegularTextStyle(color: ColorsManger.grey)),
      inputDecorationTheme: InputDecorationTheme(
          //border
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorsManger.grey1),
          ),
          //hint text style
          hintStyle: getRegularTextStyle(color: ColorsManger.grey1),
          //focused ERROR border
          errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorsManger.error),
          ),
          //focused border
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: ColorsManger.primary),
          ),
          //focused ERROR hint text style
          errorStyle: getRegularTextStyle(color: ColorsManger.error),
          //focused Label text style
          labelStyle: getMediumTextStyle(color: ColorsManger.grey),

          ///fill COLOR
          filled: true,
          fillColor: ColorsManger.white,
          contentPadding: const EdgeInsets.all(AppPadding.padding8)));
}
