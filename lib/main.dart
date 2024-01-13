import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initialThemeMode =
      await AdaptiveTheme.getThemeMode() ?? AdaptiveThemeMode.system;
  runApp(MyApp(
    initialThemeMode: initialThemeMode,
  ));
}
