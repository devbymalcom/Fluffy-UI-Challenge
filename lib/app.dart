import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:fluffy_challenge_week_1/core/constants/app_colors.dart';
import 'package:fluffy_challenge_week_1/core/constants/app_const.dart';
import 'package:fluffy_challenge_week_1/core/theme/theme.dart';
import 'package:fluffy_challenge_week_1/presentation/wrapper.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.initialThemeMode});
  final AdaptiveThemeMode initialThemeMode;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      initial: initialThemeMode,
      light: getLightTheme(AppColors.primaryColor, useMaterial3: false),
      dark: getDarkTheme(AppColors.primaryColor, useMaterial3: false),
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConst.appName,
        theme: theme,
        darkTheme: darkTheme,
        home: const Wrapper(),
      ),
    );
  }
}
