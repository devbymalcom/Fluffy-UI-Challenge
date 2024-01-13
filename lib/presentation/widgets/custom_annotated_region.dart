import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screwdriver/flutter_screwdriver.dart';

class CustomAnnotatedRegion extends StatelessWidget {
  const CustomAnnotatedRegion({
    super.key,
    required this.brightness,
    required this.child,
  });

  final Brightness brightness;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: context.theme.scaffoldBackgroundColor,
          statusBarIconBrightness:
              brightness.isDark ? Brightness.light : Brightness.dark,
          statusBarBrightness:
              brightness.isDark ? Brightness.dark : Brightness.light,
          systemNavigationBarColor: context.theme.scaffoldBackgroundColor,
          systemNavigationBarIconBrightness:
              brightness.isDark ? Brightness.dark : Brightness.light,
          systemNavigationBarDividerColor: Colors.transparent,
        ),
        child: child);
  }
}
