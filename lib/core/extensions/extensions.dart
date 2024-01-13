import 'package:flutter/material.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';

extension ColorExt on Color {
  Color darken([double percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(
        alpha, (red * f).round(), (green * f).round(), (blue * f).round());
  }

  Color toPrimaryMaterial3({Brightness brightness = Brightness.dark}) {
    final palette = CorePalette.of(value);
    if (brightness == Brightness.dark) {
      return Color(palette.primary.get(80));
    }
    return Color(palette.primary.get(40));
  }
}

extension ThemeExt on ThemeData {
  Color get textColor => textTheme.titleLarge!.color!;
}
