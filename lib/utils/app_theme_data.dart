import 'package:chatapp/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  AppThemeData._();

  static ThemeData get theme => ThemeData().copyWith(
        textTheme: GoogleFonts.robotoTextTheme()
            .apply(bodyColor: ColorConstants.onPrimary),
        scaffoldBackgroundColor: ColorConstants.primary,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorConstants.primaryDark,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(elevation: 0),
        colorScheme: const ColorScheme.light(
          primary: ColorConstants.primary,
          onBackground: ColorConstants.primary,
        ),
      );
}
