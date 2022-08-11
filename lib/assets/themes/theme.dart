import 'package:flutter/material.dart';
import 'package:surf_practice_chat_flutter/assets/themes/theme_config.dart';

ThemeData getThemeData(BuildContext context) => ThemeData.light().copyWith(
      primaryColor: ThemeConfig.primaryColor,
      secondaryHeaderColor: ThemeConfig.secondaryColor,
      backgroundColor: ThemeConfig.backgroundColor,
      scaffoldBackgroundColor: ThemeConfig.backgroundColor,
      dividerColor: ThemeConfig.dividerColor,
      iconTheme: const IconThemeData(color: ThemeConfig.iconColor),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w600,
        ), //* Auth screen titles
        headline2: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ), //* Big titles
        headline3: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
        headline4: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ), //* Header titles
        headline5: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        headline6: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFFB4B4B4),
        ),
      ).apply(
        fontFamily: ThemeConfig.font,
        bodyColor: ThemeConfig.textColor1,
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        color: ThemeConfig.secondaryColor,
        iconTheme: IconThemeData(color: ThemeConfig.iconColor),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: ThemeConfig.primaryColor,
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 16.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            shadowColor: ThemeConfig.primaryColor,
            textStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            color: ThemeConfig.primaryColor,
          ),
        ),
      ),
      colorScheme: const ColorScheme.light(
        primary: ThemeConfig.primaryColor,
        secondary: ThemeConfig.secondaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: 17.0,
        ),
        errorStyle: const TextStyle(
          fontSize: 12.0,
        ),
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),
      // dialogBackgroundColor: ThemeConfig.backgroundColor,
      // dialogTheme: const DialogTheme(
      //   alignment: Alignment.center,
      //   elevation: 5,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
      //   ),
      // ),
      // bottomSheetTheme: BottomSheetThemeData(
      //   backgroundColor: Colors.transparent,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(30.0),
      //   ),
      // ),
      // popupMenuTheme: const PopupMenuThemeData(
      //   color: ThemeConfig.backgroundColor,
      //   elevation: 7.0,
      //   textStyle: TextStyle(
      //     fontSize: 15.0,
      //     fontFamily: ThemeConfig.font,
      //   ),
      // ),
    );